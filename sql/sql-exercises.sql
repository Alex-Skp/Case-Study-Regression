#1. Create a database called `house_price_regression`.
CREATE DATABASE house_price_regression; 
USE house_price_regression;

#2. Create a table `house_price_data` with the same columns as given in the csv file. Please make sure you use the correct data types for the columns.
CREATE TABLE house_price_data (
	id BIGINT,
	date_sold CHAR(10), 
	bedrooms DECIMAL,
	bathrooms DECIMAL,
	sqft_living INT,
	sqft_lot INT,
	floors SMALLINT,
	waterfront BOOL,
	view SMALLINT,
	cond SMALLINT, 
	grade SMALLINT,
	sqft_above INT,
	sqft_basement INT,
	yr_built INT,
	yr_renovated INT,
	zipcode INT,
	latitude DECIMAL(7,4),
	longitude DECIMAL(7,4),
	sqft_living15 INT,
	sqft_lot15 INT,
	price INT );

#3. Import the data from the csv file into the table.
#Loaded from Uploads authorized file in MySQL client
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/regression_data.csv'
INTO TABLE house_price_data
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#4.  Select all the data from table `house_price_data` to check if the data was imported correctly
SELECT h.* FROM house_price_data h;



#5.  Use the alter table command to drop the column `date` from the database, as we would not use it in the analysis with SQL. Select all the data from the table to verify if the command worked. Limit your returned results to 10.
ALTER TABLE house_price_data
DROP COLUMN date_sold;
SELECT h.* FROM house_price_data h LIMIT 10;

#6.  Use sql query to find how many rows of data you have.
SELECT COUNT(*) AS no_rows FROM house_price_data ;
#Apparently the dataset is not 22000 rows, but 21596. Confirmed when opening the csv file in Notepad++. Includes 21597 Rows (With the header)

#7.  Now we will try to find the unique values in some of the categorical columns:

#    - What are the unique values in the column `bedrooms`?
SELECT DISTINCT(h.bedrooms) FROM house_price_data h ORDER BY h.bedrooms;
#    - What are the unique values in the column `bathrooms`?
SELECT DISTINCT(h.bathrooms) FROM house_price_data h ORDER BY h.bathrooms;
#    - What are the unique values in the column `floors`?
SELECT DISTINCT(h.floors) FROM house_price_data h ORDER BY h.floors;
#    - What are the unique values in the column `condition`?
SELECT DISTINCT(h.cond) FROM house_price_data h ORDER BY h.cond;
#    - What are the unique values in the column `grade`?;
SELECT DISTINCT(h.grade) FROM house_price_data h ORDER BY h.grade;

#8.  Arrange the data in a decreasing order by the price of the house. Return only the IDs of the top 10 most expensive houses in your data.
SELECT h.id FROM house_price_data h
ORDER BY h.price DESC
LIMIT 10;

#9.  What is the average price of all the properties in your data?
SELECT AVG(h.price) FROM house_price_data h;

#10. In this exercise we will use simple group by to check the properties of some of the categorical variables in our data

#    - What is the average price of the houses grouped by bedrooms? The returned result should have only two columns, bedrooms and Average of the prices. Use an alias to change the name of the second column.
SELECT h.bedrooms, AVG(h.price) as average
FROM house_price_data h
GROUP BY h.bedrooms
ORDER BY average;

#    - What is the average `sqft_living` of the houses grouped by bedrooms? The returned result should have only two columns, bedrooms and Average of the `sqft_living`. Use an alias to change the name of the second column.
SELECT h.bedrooms, AVG(h.sqft_living) as average
FROM house_price_data h
GROUP BY h.bedrooms
ORDER BY average;

#    - What is the average price of the houses with a waterfront and without a waterfront? The returned result should have only two columns, waterfront and `Average` of the prices. Use an alias to change the name of the second column.
SELECT h.waterfront, AVG(h.price) as average
FROM house_price_data h
GROUP BY h.waterfront
ORDER BY average;


#    - Is there any correlation between the columns `condition` and `grade`? You can analyse this by grouping the data by one of the variables and then aggregating the results of the other column. Visually check if there is a positive correlation or negative correlation or no correlation between the variables.
SELECT h.cond, AVG(h.grade) as average_grade
FROM house_price_data h
GROUP BY h.cond
ORDER BY h.cond;
#There is a correlation in conditions 1-2-3 but then it flattens and decreases in 4-5

#11. One of the customers is only interested in the following houses:

#    - Number of bedrooms either 3 or 4
#   - Bathrooms more than 3
#    - One Floor
#    - No waterfront
#    - Condition should be 3 at least
#    - Grade should be 5 at least
#    - Price less than 300000

#   For the rest of the things, they are not too concerned. Write a simple query to find what are the options available for them?
SELECT h.* FROM house_price_data h
WHERE h.bedrooms IN (3,4)
AND h.bathrooms > 3
AND h.floors = 1
AND h.waterfront = 0
AND h.cond > 3
AND h.grade > 5
AND h.price < 300000;
#There are no houses available with these conditions. There is one with five bedrooms, Would maybe recommend to make some guest bedrooms?  
SELECT h.* FROM house_price_data h
WHERE h.bedrooms IN (3,4,5)
AND h.bathrooms > 3
AND h.floors = 1
AND h.waterfront = 0
AND h.cond > 3
AND h.grade > 5
AND h.price < 300000;

#12. Your manager wants to find out the list of properties whose prices are twice more than the average of all the properties in the database. Write a query to show them the list of such properties. You might need to use a sub query for this problem.
SELECT h.* FROM house_price_data h
WHERE h.price > (SELECT AVG(h.price)*2 FROM house_price_data h)
ORDER BY h.price;

#13. Since this is something that the senior management is regularly interested in, create a view of the same query.
CREATE VIEW more_than_2x_avg_price AS
SELECT h.* FROM house_price_data h
WHERE h.price > (SELECT AVG(h.price)*2 FROM house_price_data h)
ORDER BY h.price;
#Check that creating the view worked
SELECT m.* from more_than_2x_avg_price m;

#14. Most customers are interested in properties with three or four bedrooms. What is the difference in average prices of the properties with three and four bedrooms?
SELECT h.bedrooms, AVG(h.price) AS average_price FROM house_price_data h
GROUP BY h.bedrooms
HAVING h.bedrooms IN (3,4);

#15. What are the different locations where properties are available in your database? (distinct zip codes)
SELECT DISTINCT(h.zipcode) AS location FROM house_price_data h
ORDER BY h.zipcode;

#16. Show the list of all the properties that were renovated.
SELECT h.* FROM house_price_data h
WHERE h.yr_renovated > 0
ORDER BY h.yr_renovated;

#17. Provide the details of the property that is the 11th most expensive property in your database.
SELECT r.* 
FROM (
	SELECT h.*, RANK() OVER( ORDER BY h.price DESC) price_rank 
	FROM house_price_data h) r
WHERE r.price_rank = 11;

 










