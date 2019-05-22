CREATE TABLE Payment
(
  Payment_ID INT ,
  Pay_method INT ,
  Taxes INT ,
  Payment_Date DATE ,
  Payment_time INT ,
  Payment_Status INT ,
  PRIMARY KEY (Payment_ID)
);

CREATE TABLE City
(
  City_ID INT ,
  Country_ID INT ,
  PRIMARY KEY (City_ID)
);

CREATE TABLE Plane
(
  Plane_ID INT ,
  Total_Seats INT ,
  PRIMARY KEY (Plane_ID)
);

CREATE TABLE Customer
(
  Customer_ID INT ,
  Customer_name VARCHAR(20) ,
  City_ID INT ,
  PRIMARY KEY (Customer_ID),
  FOREIGN KEY (City_ID) REFERENCES City(City_ID)
);

CREATE TABLE Trip
(
  Trip_ID INT ,
  Trip_date DATE ,
  Trip_time INT ,
  Trip_duration INT ,
  --Customer_ID INT ,
  PRIMARY KEY (Trip_ID)--,
  --FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Flight
(
  Flight_ID INT ,
  Business_Seats INT ,
  --Schedule_Date DATE ,
  Schedule_Depart_time INT ,
  Real_Depart_time INT ,
  Start_City_ID INT ,
  Dest_City_ID INT ,
  Plane_ID INT ,
  PRIMARY KEY (Flight_ID),
  FOREIGN KEY (Start_City_ID) REFERENCES City(City_ID),
  FOREIGN KEY (Dest_City_ID) REFERENCES City(City_ID),
  FOREIGN KEY (Plane_ID) REFERENCES Plane(Plane_ID)
);

CREATE TABLE Tickit
(
  Tickit_ID INT ,
  Single_Round INT ,
  Business_Class INT ,
  Seat_Num INT ,
  Customer_ID INT ,
  Flight_ID INT ,
  Tickit_Price INT,
  PRIMARY KEY (Tickit_ID),
  FOREIGN KEY (Flight_ID) REFERENCES Flight(Flight_ID),
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
  constraint tickit_unique_seat unique(Flight_ID,Seat_Num) --liming gong, 04/23
);


-- add more constraint on tickit, any insert seat_num can't exceed total seat number
DROP FUNCTION IF EXISTS my_trigger_function();
CREATE FUNCTION my_trigger_function()
RETURNS trigger AS $seat_num_check$
DECLARE var_total_seat INT;
DECLARE var_plane_id INT;
DECLARE var_bus_seats INT;
BEGIN	
	SELECT Flight.Plane_ID INTO var_plane_id 
		FROM Flight WHERE Flight.Flight_ID = NEW.Flight_ID; 
	SELECT Plane.Total_Seats INTO var_total_seat
        	FROM Plane WHERE Plane.Plane_id = var_plane_id;
	SELECT Flight.Business_Seats INTO var_bus_seats
		FROM Flight WHERE Flight.Flight_ID = NEW.Flight_ID;
	
	IF var_total_seat is null THEN
		RAISE EXCEPTION 'Wrong transaction, plane_id does not exist';
	END IF;
	IF NEW.Seat_Num <= var_bus_seats AND NEW.Business_Class=0 THEN
		RAISE EXCEPTION 'Wong seat class, This seat should be a business class';
	END IF;	
	IF NEW.Seat_Num > var_bus_seats AND NEW.Business_Class=1 THEN
		RAISE EXCEPTION 'Wong seat class, This seat should be a non-business class';
	END IF;
  	IF NEW.Seat_Num <=var_total_seat THEN
		--RAISE NOTICE '<<< right Seat Number %,total seats %', NEW.Seat_Num,var_total_seat; 
    		RETURN NEW;  
  	END IF;
	RAISE EXCEPTION 'Wrong Seat Number %,total seats %', NEW.Seat_Num,var_total_seat;  
  	RETURN null;
END;
$seat_num_check$ LANGUAGE 'plpgsql';


DROP TRIGGER IF EXISTS  my_trigger ON Tickit;
CREATE TRIGGER my_trigger
BEFORE INSERT or UPDATE ON Tickit
FOR EACH ROW
EXECUTE PROCEDURE my_trigger_function(); 


CREATE TABLE Reservation
(
  Reservation_ID INT ,
  Reservation_date DATE ,
  Trip_ID INT ,
  Payment_ID INT ,
  Tickit_ID INT ,
  Customer_ID INT ,
  PRIMARY KEY (Reservation_ID),
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
  FOREIGN KEY (Tickit_ID) REFERENCES Tickit(Tickit_ID),
  FOREIGN KEY (Payment_ID) REFERENCES Payment(Payment_ID),
  FOREIGN KEY (Trip_ID) REFERENCES Trip(Trip_ID)
);



CREATE TABLE Final(
Plane_ID INT,
Business_Left INT,
Business_Sold INT,
Economic_Left INT,
Economic_Sold INT,
Total_Earning INT,
PRIMARY KEY (Plane_ID)
);
