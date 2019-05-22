--10 items(city_id, country_id)
insert into City values(0001, 01);
insert into City values(0002, 01);
insert into City values(0003, 01);
insert into City values(0004, 02);
insert into City values(0005, 02);
insert into City values(0006, 02);
insert into City values(0007, 02);
insert into City values(0008, 01);
insert into City values(0009, 01);
insert into City values(0010, 01);


--total 5  (plane_id, total_seats)
insert into Plane values(0001, 100);
insert into Plane values(0002, 110);
insert into Plane values(0003, 120);
insert into Plane values(0004, 130);
insert into Plane values(0005, 140);


--60 items(customer_id, name, city_id)
--insert into Customer values(0001, 'jack0', 0001);
--insert into Customer values(0002, 'jack1', 0001);
--insert into Customer values(0003, 'jack2', 0002);
--insert into Customer values(0004, 'jack3', 0002);
--insert into Customer values(0005, 'jack4', 0002);
--insert into Customer values(0006, 'jack5', 0002);
--insert into Customer values(0007, 'jack6', 0001);
--insert into Customer values(0008, 'jack7', 0001);
--insert into Customer values(0009, 'jack8', 0001);
--insert into Customer values(0010, 'jack9', 0001);
--insert into Customer values(0011, 'hack0', 0001);
--insert into Customer values(0012, 'hack1', 0001);
--insert into Customer values(0013, 'hack2', 0009);
--insert into Customer values(0014, 'hack3', 0009);
--insert into Customer values(0015, 'hack4', 0009);
--insert into Customer values(0016, 'hack5', 0009);
--insert into Customer values(0017, 'hack6', 0001);
--insert into Customer values(0018, 'hack7', 0001);
--insert into Customer values(0019, 'hack8', 0001);
--insert into Customer values(0020, 'hack9', 0007);
--insert into Customer values(0021, 'iack0', 0007);
--insert into Customer values(0022, 'iack1', 0007);
--insert into Customer values(0023, 'iack2', 0007);
--insert into Customer values(0024, 'iack3', 0001);
--insert into Customer values(0025, 'iack4', 0001);
--insert into Customer values(0026, 'iack5', 0001);
--insert into Customer values(0027, 'iack6', 0006);
--insert into Customer values(0028, 'iack7', 0006);
--insert into Customer values(0029, 'iack8', 0006);
--insert into Customer values(0030, 'iack9', 0006);
--insert into Customer values(0031, 'mack0', 0006);
--insert into Customer values(0032, 'mack1', 0006);
--insert into Customer values(0033, 'mack2', 0006);
--insert into Customer values(0034, 'mack3', 0006);
--insert into Customer values(0035, 'mack4', 0004);
--insert into Customer values(0036, 'mack5', 0004);
--insert into Customer values(0037, 'mack6', 0004);
--insert into Customer values(0038, 'mack7', 0004);
--insert into Customer values(0039, 'mack8', 0004);
--insert into Customer values(0040, 'mack9', 0004);
--insert into Customer values(0041, 'nack0', 0001);
--insert into Customer values(0042, 'nack1', 0001);
--insert into Customer values(0043, 'nack2', 0001);
--insert into Customer values(0044, 'nack3', 0001);
--insert into Customer values(0045, 'nack4', 0001);
--insert into Customer values(0046, 'nack5', 0002);
--insert into Customer values(0047, 'nack6', 0002);
--insert into Customer values(0048, 'nack7', 0002);
--insert into Customer values(0049, 'nack8', 0002);
--insert into Customer values(0050, 'nack9', 0002);
--insert into Customer values(0051, 'kack0', 0002);
--insert into Customer values(0052, 'kack1', 0002);
--insert into Customer values(0053, 'kack2', 0002);
--insert into Customer values(0054, 'kack3', 0002);
--insert into Customer values(0055, 'kack4', 0001);
--insert into Customer values(0056, 'kack5', 0001);
--insert into Customer values(0057, 'kack6', 0001);
--insert into Customer values(0058, 'kack7', 0010);
--insert into Customer values(0059, 'kack8', 0010);
--insert into Customer values(0060, 'kack9', 0010);



--total 20 (flight_id, business_seats,scheduled_time, real_time, start_city, des_city, plane_id)
insert into Flight values(0001, 40, 0800, 0810, 0001, 0004, 0001);
insert into Flight values(0002, 40, 0900, 0810, 0007, 0003, 0002);
insert into Flight values(0003, 40, 0800, 0800, 0002, 0005, 0003);
insert into Flight values(0004, 40, 1000, 0800, 0008, 0010, 0004);
insert into Flight values(0005, 40, 0800, 0800, 0006, 0009, 0005);
--insert into Flight values(0006, 8, '2019-03-01' ,0800, 0800, null, 0001, 0001);
--insert into Flight values(0007, 8, '2019-05-01' ,0800, 0800, 0002, 0006, 0002);
--insert into Flight values(0008, 8, '2019-03-01' ,0800, 0800, 0002, 0003, 0003);
--insert into Flight values(0009, 8, '2019-06-01' ,0800, 0800, 0009, 0002, 0003);
--insert into Flight values(0010, 8, '2019-04-01' ,0800, 0800, 0009, 0005, 0004);
--insert into Flight values(0011, 8, '2019-02-01' ,0800, 0800, 0009, 0003, 0001);
--insert into Flight values(0012, 8, '2019-05-01' ,0800, 0800, 0009, null, 0002);
--insert into Flight values(0013, 8, '2019-06-01' ,0800, 0800, 0009, 0003, 0002);
--insert into Flight values(0014, 8, '2019-06-01' ,0800, 0800, 0009, 0001, 0001);
--insert into Flight values(0015, 8, '2019-03-01' ,0800, 0800, null, 0003, 0003);
--insert into Flight values(0016, 8, '2019-07-01' ,0800, 0800, 0002, 0007, 0005);
--insert into Flight values(0017, 8, '2019-03-01' ,0800, 0800, 0008, 0003, 0002);
--insert into Flight values(0018, 8, '2019-02-01' ,0800, 0810, 0008, 0009, 0004);
--insert into Flight values(0019, 8, '2019-04-01' ,0800, 0810, null, 0007, 0001);
--insert into Flight values(0020, 8, '2019-03-01' ,0800, 0810, 0002, 0002, 0004);



--30 items(trip_id, trip_date, trip_time, trip_duration, customer_id)
insert into Trip values(0001, '2019-01-01', 0512, 13); 
insert into Trip values(0002, '2019-02-01', 1414, 11);
insert into Trip values(0003, '2019-03-01', 0812, 13);
insert into Trip values(0004, '2019-04-01', 1011, 13);
insert into Trip values(0005, '2019-04-01', 0452, 11);
insert into Trip values(0006, '2019-03-01', 0242, 13);
insert into Trip values(0007, '2019-05-01', 0722, 12);
insert into Trip values(0008, '2019-03-01', 0932, 12);
insert into Trip values(0009, '2019-06-01', 1352, 11);
insert into Trip values(0010, '2019-04-01', 0212, 11);
insert into Trip values(0011, '2019-02-01', 0622, 11);
insert into Trip values(0012, '2019-05-01', 0622, 11);
insert into Trip values(0013, '2019-06-01', 0622, 14);
insert into Trip values(0014, '2019-06-01', 0642, 11);
insert into Trip values(0015, '2019-03-01', 0612, 11);
insert into Trip values(0016, '2019-07-01', 0632, 11);
insert into Trip values(0017, '2019-03-01', 0512, 12);
insert into Trip values(0018, '2019-02-01', 0412, 12);
insert into Trip values(0019, '2019-04-01', 0612, 12);
insert into Trip values(0020, '2019-03-01', 0912, 11);
insert into Trip values(0021, '2019-04-01', 0212, 11);
insert into Trip values(0022, '2019-02-01', 0622, 11);
insert into Trip values(0023, '2019-05-01', 0622, 11);
insert into Trip values(0024, '2019-06-01', 0622, 14);
insert into Trip values(0025, '2019-06-01', 0642, 11);
insert into Trip values(0026, '2019-03-01', 0612, 11);
insert into Trip values(0027, '2019-07-01', 0632, 11);
insert into Trip values(0028, '2019-03-01', 0512, 12);
insert into Trip values(0029, '2019-02-01', 0412, 12);
insert into Trip values(0030, '2019-04-01', 0612, 12);



--total 40, 30 finish, 10 pending (pay_id, pay_method, tax, pay_date, pay_time, pay_finish)
insert into Payment values(0001, 0, 02, '2019-03-12', 0820, 1); 
insert into Payment values(0002, 0, 02, '2019-03-12', 0820, 1);
insert into Payment values(0003, 0, 02, '2019-03-12', 0820, 1);
insert into Payment values(0004, 0, 03, '2019-03-22', 0820, 1);
insert into Payment values(0005, 0, 03, '2019-03-22', 0820, 1);
insert into Payment values(0006, 0, 03, '2019-03-22', 0820, 1);
insert into Payment values(0007, 0, 03, '2019-03-22', 0820, 1);
insert into Payment values(0008, 1, 03, '2019-03-22', 0820, 1);
insert into Payment values(0009, 1, 03, '2019-03-22', 0820, 1);
insert into Payment values(0010, 1, 03, '2019-03-22', 0820, 1);
insert into Payment values(0011, 1, 02, '2019-03-22', 0820, 1);
insert into Payment values(0012, 1, 02, '2019-03-22', 0820, 1);
insert into Payment values(0013, 1, 02, '2019-03-22', 0820, 1);
insert into Payment values(0014, 1, 02, '2019-03-22', 0820, 1);
insert into Payment values(0015, 1, 02, '2019-03-12', 0820, 1);
insert into Payment values(0016, 1, 02, '2019-03-12', 0820, 1);
insert into Payment values(0017, 1, 02, '2019-03-12', 0820, 1);
insert into Payment values(0018, 1, 02, '2019-03-12', 0820, 1);
insert into Payment values(0019, 1, 02, '2019-03-02', 0820, 1);
insert into Payment values(0020, 1, 02, '2019-03-02', 0820, 1);
insert into Payment values(0021, 1, 02, '2019-03-02', 0820, 1);
insert into Payment values(0022, 1, 02, '2019-03-02', 0820, 1);
insert into Payment values(0023, 1, 01, '2019-03-02', 0820, 1);
insert into Payment values(0024, 1, 01, '2019-03-02', 0820, 1);
insert into Payment values(0025, 1, 01, '2019-03-02', 0820, 1);
insert into Payment values(0026, 0, 01, '2019-03-02', 0820, 1);
insert into Payment values(0027, 0, 01, '2019-03-02', 0820, 1);
insert into Payment values(0028, 0, 01, '2019-03-12', 0820, 1);
insert into Payment values(0029, 0, 01, '2019-03-12', 0820, 1);
insert into Payment values(0030, 0, 01, '2019-03-12', 0820, 1);
insert into Payment values(0031, 0, 01, '2019-03-12', 0820, 1);
insert into Payment values(0032, 0, 02, '2019-03-12', 0820, 1);
insert into Payment values(0033, 0, 02, '2019-03-12', 0820, 1);
insert into Payment values(0034, 0, 02, '2019-03-14', 0820, 1);
insert into Payment values(0035, 0, 03, '2019-03-14', 0820, 1);
insert into Payment values(0036, 0, 03, '2019-03-14', 0820, 1);
insert into Payment values(0037, 0, 03, '2019-03-14', 0820, 1);
insert into Payment values(0038, 0, 03, '2019-03-14', 0820, 1);
insert into Payment values(0039, 0, 03, '2019-03-12', 0820, 1);
insert into Payment values(0040, 0, 03, '2019-03-12', 0820, 1);


--total 30 (tick_id, single, business, seat_num, custom_id, flight_id)
--insert into Tickit values(0001, 1, 1, 01, 0001, 0001);
--insert into Tickit values(0002, 1, 1, 02, 0002, 0002);
--insert into Tickit values(0003, 0, 1, 03, 0004, 0003);
--insert into Tickit values(0004, 0, 1, 04, 0002, 0004);
--insert into Tickit values(0005, 0, 1, 05, 0005, 0005);
--insert into Tickit values(0006, 0, 1, 06, 0001, 0002);
--insert into Tickit values(0007, 1, 1, 07, 0003, 0007);
--insert into Tickit values(0008, 1, 1, 08, 0001, 0003);
--insert into Tickit values(0009, 1, 0, 09, 0005, 0001);
--insert into Tickit values(0010, 1, 0, 10, 0005, 0001);
--insert into Tickit values(0011, 1, 0, 11, 0001, 0004);
--insert into Tickit values(0012, 1, 0, 12, 0006, 0001);
--insert into Tickit values(0013, 1, 0, 13, 0001, 0005);
--insert into Tickit values(0014, 1, 0, 11, 0009, 0005);
--insert into Tickit values(0015, 0, 0, 15, 0001, 0006);
--insert into Tickit values(0016, 0, 1, 02, 0009, 0001);
--insert into Tickit values(0017, 0, 1, 03, 0011, 0001);
--insert into Tickit values(0018, 0, 1, 01, 0001, 0007);
--insert into Tickit values(0019, 0, 1, 07, 0001, 0008);
--insert into Tickit values(0020, 0, 1, 03, 0008, 0002);
--insert into Tickit values(0021, 0, 1, 07, 0008, 0002);
--insert into Tickit values(0022, 0, 1, 07, 0001, 0009);
--insert into Tickit values(0023, 0, 1, 08, 0021, 0002);
--insert into Tickit values(0024, 0, 1, 01, 0001, 0010);
--insert into Tickit values(0025, 1, 1, 04, 0010, 0001);
--insert into Tickit values(0026, 1, 0, 13, 0001, 0011);
--insert into Tickit values(0027, 1, 1, 04, 0007, 0003);
--insert into Tickit values(0028, 1, 1, 01, 0021, 0003);
--insert into Tickit values(0029, 1, 1, 05, 0023, 0001);
--insert into Tickit values(0030, 1, 0, 11, 0025, 0001);


--40 items (res_id, res_date, trip_id, pay_id, tickit_id, customer_id)
--insert into Reservation values(0001, '2019-02-21', 0001, 0001, 0001, 0001);
--insert into Reservation values(0002, '2019-03-21', 0001, 0002, 0002, 0002);
--insert into Reservation values(0003, '2019-02-21', 0002, 0002, 0003, 0002);
--insert into Reservation values(0004, '2019-03-21', 0004, 0001, 0004, 0003);
--insert into Reservation values(0005, '2019-02-22', 0005, 0003, 0001, 0003);
--insert into Reservation values(0006, '2019-03-11', 0001, 0003, 0005, 0004);
--insert into Reservation values(0007, '2019-03-10', 0003, 0003, 0007, 0004);
--insert into Reservation values(0008, '2019-03-11', null, 0001, 0008, 0005);
--insert into Reservation values(0009, '2019-02-11', 0005, 0001, 0001, 0005);
--insert into Reservation values(0010, '2019-03-11', 0003, 0001, 0003, 0006);
--insert into Reservation values(0011, '2019-04-21', 0002, 0005, 0003, 0006);
--insert into Reservation values(0012, '2019-03-21', 0007, 0005, 0003, 0007);
--insert into Reservation values(0013, '2019-01-10', 0007, 0005, 0003, 0007);
--insert into Reservation values(0014, '2019-03-12', 0011, 0001, 0001, 0008);
--insert into Reservation values(0015, '2019-03-14', 0011, 0006, 0005, 0008);
--insert into Reservation values(0016, '2019-01-16', 0011, 0006, 0005, 0009);
--insert into Reservation values(0017, '2019-03-20', 0001, 0006, 0005, 0009);
--insert into Reservation values(0018, '2019-01-21', 0001, 0006, 0005, 0010);
--insert into Reservation values(0019, '2019-01-21', 0001, 0001, 0005, 0010);
--insert into Reservation values(0020, '2019-03-25', 0001, 0007, 0001, 0011);
--insert into Reservation values(0021, '2019-03-07', null, 0007, 0009, 0011);
--insert into Reservation values(0022, '2019-01-01', 0001, 0007, 0009, 0011);
--insert into Reservation values(0023, '2019-03-06', 0001, 0001, 0009, 0012);
--insert into Reservation values(0024, '2019-03-01', 0001, 0001, 0001, 0012);
--insert into Reservation values(0025, '2019-03-20', 0011, 0008, 0002, 0012);
--insert into Reservation values(0026, '2019-03-21', 0021, 0008, 0003, 0011);
--insert into Reservation values(0027, '2019-03-21', 0021, 0008, 0003, 0021);
--insert into Reservation values(0028, '2019-01-24', 0021, 0001, 0003, 0021);
--insert into Reservation values(0029, '2019-03-29', 0021, 0001, 0001, 0024);
--insert into Reservation values(0030, '2019-03-21', 0021, 0009, 0010, 0024);
--insert into Reservation values(0031, '2019-01-21', 0021, 0009, 0010, 0021);
--insert into Reservation values(0032, '2019-01-27', 0001, 0011, 0001, 0026);
--insert into Reservation values(0033, '2019-03-22', 0001, 0011, 0001, 0026);
--insert into Reservation values(0034, '2019-03-12', 0020, 0011, 0001, 0021);
--insert into Reservation values(0035, '2019-03-02', 0021, 0001, 0012, 0022);
--insert into Reservation values(0036, '2019-03-21', 0022, 0010, 0013, 0022);
--insert into Reservation values(0037, '2019-02-19', 0021, 0010, 0014, 0005);
--insert into Reservation values(0038, '2019-01-21', 0024, 0010, 0006, 0002);
--insert into Reservation values(0039, '2019-03-28', 0006, 0001, 0006, 0002);
--insert into Reservation values(0040, '2019-03-21', 0001, 0001, 0007, 0004);


insert into Final values(1,40,0,60,0,0);
insert into Final values(2,40,0,70,0,0);
insert into Final values(3,40,0,80,0,0);
insert into Final values(4,40,0,90,0,0);
insert into Final values(5,40,0,100,0,0);
