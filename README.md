# airline
A course project for Database System.      
Main content is simulating a ticket booking system.          
Use multiple-threads to book tickets at the same time and use transactions to keep data integerity.         
Use lock to protect row data. I also use trigger to check new data before inserting.        
There is a final table to show how many tickets are sold and how much has earned.          

## How to run:           
1) run drop.sql             
2) run create.sql            
3) run insert.sql            
4) run "oltp_airline.py  100  5"           
