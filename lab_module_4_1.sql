-- Drop the PETSALE table in case it exists
drop table PETSALE;
-- Create the PETSALE table 
create table PETSALE (
	ID INTEGER PRIMARY KEY NOT NULL,
	ANIMAL VARCHAR(20),
	QUANTITY INTEGER,
	SALEPRICE DECIMAL(6,2),
	SALEDATE DATE
	);
-- Insert saple data into PETSALE table
insert into PETSALE values 
	(1,'Cat',9,450.09,'2018-05-29'),
	(2,'Dog',3,666.66,'2018-06-01'),
	(3,'Dog',1,100.00,'2018-06-04'),
	(4,'Parrot',2,50.00,'2018-06-04'),
	(5,'Dog',1,75.75,'2018-06-10'),
	(6,'Hamster',6,60.60,'2018-06-11'),
	(7,'Cat',1,44.44,'2018-06-11'),
	(8,'Goldfish',24,48.48,'2018-06-14'),
	(9,'Dog',2,222.22,'2018-06-15')
;
--  Add up all the values in the sale price column labeled as "saleprice_sum"

select sum(SALEPRICE) AS SALEPRICE_SUM from PETSALE;

--  Get the Maximum QUANTITY of any animal

select max(QUANTITY) from PETSALE;

-- Get the Minimum value of ID for dogs

select min(ID) from PETSALE where ANIMAL = 'Dog';

--Specify the average value of SALEPRICE

select avg(SALEPRICE) from PETSALE;

--Calculate The average SALEPRICE per 'Dog'

select avg(SALEPRICE/QUANTITY) from PETSALE
where ANIMAL = 'Dog';

-- Round Up or Down every value in SALEPRICE
select ROUND(SALEPRICE) from PETSALE; 

-- Retrieve the length of each value  in ANIMAL
select length(ANIMAL) from PETSALE;

-- Retrieve ANIMAL values in UPPERCASE

select UCASE(ANIMAL) from PETSALE;

-- Retrieve ANIMAL values in lowercase:
select LCASE(ANIMAL) from PETSALE
where ANIMAL = 'Dog';

-- Get Unique Values from uppercase example
select DISTINCT(UCASE(ANIMAL)) from PETSALE;

