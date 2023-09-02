USE UberDWH
----------------------------
CREATE TABLE passenger_count_dim (
               passenger_count_id INT PRIMARY KEY,
               passenger_count NUMERIC );

------------------------------------------------
CREATE TABLE datetime_dim (
                datetime_id INT PRIMARY KEY,
                tpep_pickup_datetime datetime,
				pick_hour NUMERIC,
				pick_day NUMERIC,
				pick_month NUMERIC,
				pick_year NUMERIC,
				pick_weekday NUMERIC,
                tpep_dropoff_datetime datetime,
				drop_hour NUMERIC,
				drop_day NUMERIC,
				drop_month NUMERIC,
				drop_year NUMERIC,
				drop_weekday NUMERIC);
			
-------------------------------------------------------------
CREATE TABLE trip_distance_dim (
               trip_distance_id INT PRIMARY KEY,
               trip_distance NUMERIC );
			   
-------------------------------------------------------
CREATE TABLE rate_code_dim (
               rate_code_id INT PRIMARY KEY,
               RatecodeID NUMERIC,
			   rate_code_name VARCHAR(100));
			   
------------------------------------------------------------
CREATE TABLE pickup_location_dim (
               pickup_location_id INT PRIMARY KEY,
               pickup_latitude NUMERIC,
			   pickup_longitude  NUMERIC);			   
			 
-------------------------------------------------------
CREATE TABLE dropoff_location_dim (
               dropoff_location_id INT PRIMARY KEY,
               dropoff_latitude NUMERIC,
			   dropoff_longitude  NUMERIC);			   
	
-------------------------------------------------------------
CREATE TABLE payment_type_dim (
               payment_type_id INT PRIMARY KEY,
               payment_type NUMERIC,
			   payment_type_name VARCHAR(100));			   
	
----------------------------------------------------------------
CREATE TABLE trip_fact_table (
                trip_id INT PRIMARY KEY,
				VendorID INT,
				datetime_id INT,
				passenger_count_id INT,
				trip_distance_id INT,
				rate_code_id INT,
				store_and_fwd_flag CHAR,
				pickup_location_id INT,
				dropoff_location_id INT,
				payment_type_id INT,
				fare_amount NUMERIC,
				extra NUMERIC,
				mta_tax NUMERIC,
				tip_amount NUMERIC,
				tolls_amount NUMERIC,
				improvement_surcharge NUMERIC,
				total_amount NUMERIC);
			