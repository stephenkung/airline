##team7, by liming gong, 1799174


#### update history #######
# update multi-thread
# update for timer scheduler
# add join() for threads sync, block main process early quit 
# add exception print debug for failed transactions
# add constraint-- (flight,seat_id) should be unique
# fix bug by adding rollback for failed transactions. If no fix, one transaction fail,others will abort 
# add trigger for seat_num boundary check -- (seat_id <= total_seat_num)
# add row lock for update seat number
###########################

import psycopg2
import sys
import re
import sys
import os
import argparse
from random import randint
import time
import random
import threading
from threading import Timer
 
parser = argparse.ArgumentParser(description='OLTP for airline database')
parser.add_argument('nthreads',  default=20, type=int, help="num of threads")
parser.add_argument('secs',  default=5, type=int, help="num of secs")

delay_en = 0    #add delay for threads

def connect_db():
	conn_string = "host='localhost' dbname='postgres' user='postgres' password='password'"
	try:
		conn = psycopg2.connect(conn_string)
		cursor = conn.cursor()
		#print ("Connected!\n")
		return cursor
	except:
		print ("Fail to connect to database!")
		return None

def random_var_gen( ):
	ttype = randint(0,1)	
	source = randint(0,5)
	des = randint(0,5)
	##generate date
	a1=(2019,3,1,0,0,0,0,0,0)
	a2=(2019,4,31,23,59,59,0,0,0)    
	start=time.mktime(a1)
	end=time.mktime(a2)
	t=random.randint(start,end)  
	date_touple=time.localtime(t)        
	date=time.strftime("%Y-%m-%d",date_touple)  
	#print("ticket_type is:",ttype,",source_city is:",source,",des_city is:",des,",trip_date is:",date)
	return ttype,source,des,date


def sql_gen(t_id,ttype,source,des,date):
	#book new ticket
	#global t_id
	global cus_id 
	global reservation_id
	new_t="begin;"
	seat_num = randint(1,150)  
	ttype=int(seat_num<=40)
	plane_id = randint(1,5)
	cus_id = cus_id+1
	reservation_id = reservation_id+1
	reservation_date = "\'"+"2019-"+str(randint(1,4))+"-"+str(randint(1,28))+"\'"
	schedule_date = "\'"+"2019-"+str(randint(1,4))+"-"+str(randint(1,28))+"\'"
	trip_id = randint(1,30)
	payment_id = randint(1,40)
	star_city = randint(1,10)
	dest_city = randint(1,10)
	flight_id = plane_id
	tickit_price = randint(10,100)
	mode = randint(0,0) 
	if mode==0: 
		#insert new tickit
		#new_t+="insert into Flight values("+str(flight_id)+","+"30,"+schedule_date+",0820,"+"0920,"+str(star_city)+","+str(dest_city)+","+str(plane_id)+");"
		new_t+="insert into Customer values("+str(cus_id)+",\'nana"+str(randint(1,400))+"\',"+str(randint(1,10))+");"
		new_t+="insert into Tickit values("+str(t_id)+",1,"+str(ttype)+","+str(seat_num)+","+str(cus_id)+","+str(flight_id)+","+str(tickit_price)+");"
		new_t+="insert into Reservation values("+str(reservation_id)+","+reservation_date+","+str(trip_id)+","+str(payment_id)+","+str(t_id)+","+str(cus_id)+");"
		#update final table
		new_t+="select * from final where plane_id="+str(plane_id)+" for update;" #add lock  
		if ttype==1:
			new_t+="update final set business_sold=business_sold+1 where plane_id="+str(plane_id)+";";
			new_t+="update final set business_left=business_left-1 where plane_id="+str(plane_id)+";";
		else:
			new_t+="update final set economic_sold=economic_sold+1 where plane_id="+str(plane_id)+";";
			new_t+="update final set economic_left=economic_left-1 where plane_id="+str(plane_id)+";";
		new_t+="update final set total_earning=total_earning+"+str(tickit_price)+" where plane_id="+str(plane_id)+";";
	else:
		pass
	thread_name = threading.current_thread().name
	print("New thread:",thread_name, ",New Transacrion:",new_t)
	return new_t


def one_thread(t_id):
	cursor = connect_db()
	if cursor is not None:
		ttype,source,des,date = random_var_gen()
		new_t = sql_gen(t_id,ttype,source,des,date)
		try:
			cursor.execute(new_t)
			if delay_en:
				time.sleep(0.1) ##add sleep, add conflicts
			cursor.execute("COMMIT;")
			thread_name = threading.current_thread().name
			print("++++ transaction submit,thread name:",thread_name)
			cursor.close()
		except Exception as e:
			thread_name = threading.current_thread().name
			print("---- transaction rollback,thread name:",thread_name)
			print("---- Error info:"+str(e))
			if delay_en:
				time.sleep(0.1) ##add sleep, add conflicts
			cursor.execute("ROLLBACK;")
			cursor.close()
		


##start batch of threads, n is batch number
def n_thread_run(one_thread,n):
	print("\n\n***************** a new batch of threads ************")
	threads=[]
	for i in range(n):
		global t_id
		t_id = t_id+1
		th = threading.Thread(target=one_thread, args=(t_id,))
		threads.append(th)
	for th in threads:
		th.start()
	for th in threads:
		th.join()


## loop timer, start batch of threads every several seconds
def loop_timer(n_thread_run,one_thread,threads,secs):
	n_thread_run(one_thread,threads)
	t = Timer(secs,loop_timer,(n_thread_run,one_thread,threads,secs))
	t.start()
	



cus_id = 0
reservation_id=0
t_id=0
if __name__=="__main__":
	args = parser.parse_args()
	threads = args.nthreads
	secs = args.secs
	print("Number of threads:",threads,",every ",secs," seconds!")

	##main program, every several seconds, satart new batch of threads	
	loop_timer(n_thread_run,one_thread,threads,secs)
 
