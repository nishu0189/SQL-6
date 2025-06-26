
--------------------------------------SET QUERIES -------------------------------------------------------------

--JOIN :- join the two table verticals  so col increases
--SET:-  join the two table Horizontaly so row increases or can join two row of same col


Create table Westor( id int, city varchar(20), sales int, region varchar(20))
-- drop table Westor
Insert into Westor 
  Values(1, 'Delhi' , 100, 'West'),
        (2, 'Pune' , 200, 'West'),
		(3, 'Pune' ,300, 'East')
		--(4, 'Delhi' , 1223, 'West');

Create table Eastor( id int, city varchar(20), sales int, region varchar(20))
-- drop table Eastor
Insert into Eastor 
  Values(1, 'mumbai' , 500, 'East'),
        (3, 'Pune' , 300, 'East'),
		(3, 'Pune' ,300, 'East')
		--(4, 'Delhi' , 1223,'East');

		--------- set apply on the same data type of column and same no. of rows only

		---1. UNION ALL :- add the all the rows of table together 

		select * from Westor  
		UNION ALL             -- t1 = 5rows , t2= 10row .. union all will be 15rows
		select * from Eastor
		
		

		 --2. UNION :- remove the duplicate value .. row that row once only
/* UNION operator combines the result sets of two or more SELECT queries into a single result set. 
It eliminates duplicate rows by default and requires that the columns in all 
SELECT statements have the same number of columns, with compatible data types.*/

		select * from Westor     
		UNION 
		select * from Eastor

		select sales, id from Westor      --col datatype should be compatiple in both the select method
		UNION 
		select id, sales  from Eastor

		--3.INTERSECT :- show the common records

		select * from Westor     
		INTERSECT
		select * from Eastor

		--4. EXCEPT:- T1- T2 minus the common row in other table... (In SQL, the EXCEPT keyword is used to return rows from the first query that are not present in the second query — similar to set subtraction.
)
		select * from Westor     
		EXCEPT
		select * from Eastor

		select * from Eastor    --T2- T1 
		--EXCEPT
		select * from Westor ;

----------combine except and union all
		(select * from Westor      
		EXCEPT
		select * from Eastor)
		union all                   -- all the unique value and removing the common row in both table
		(select * from Eastor    
		EXCEPT
		select * from Westor );

		


		----- union , intersect, except .. all of them remove duplicate values  from same table duplicate or either differnt col duplicates
