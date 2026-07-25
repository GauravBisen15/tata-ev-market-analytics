CREATE DATABASE tata_ev_project;
USE tata_ev_project;


CREATE TABLE ev_makers ( 
     maker_name VARCHAR(100),
     place VARCHAR(100),
     state VARCHAR(100)
);

CREATE TABLE ev_sales ( 
     category VARCHAR(10),
     maker_name VARCHAR(100),
     year INT,
     units_sold INT 
);

CREATE TABLE charging_stations ( 
	 state VARCHAR(100),
     operational_charging_stations INT 
);

CREATE TABLE vehicle_class_totals (
     vehicle_class VARCHAR(100),
     total_registration BIGINT
);

CREATE TABLE ev_category_trend ( 
     trend_date VARCHAR(20),
     vehicle_category VARCHAR(100),
     units INT 
);
     
     
     
SELECT * FROM charging_stations;
SELECT * FROM ev_category_trend;
SELECT * FROM ev_makers;
SELECT * FROM ev_sales;
SELECT * FROM vehicle_class_totals;
SELECT * FROM ev_sales WHERE maker_name LIKE '%TATA%';

 
 
 
