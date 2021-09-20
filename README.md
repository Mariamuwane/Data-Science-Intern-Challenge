# Data-Science-Intern-Challenge
This is for an entry into Shopify's Data Science Internship.
Question 1: Given some sample data, write a program to answer the following: click this link (https://docs.google.com/spreadsheets/d/16i38oonuX1y1g7C_UAmiK9GkY7cS-64DfiDMNiR41LM/edit#gid=0) to access the required data set

On Shopify, we have exactly 100 sneaker shops, and each of these shops sells only one model of shoe. We want to do some analysis of the average order value (AOV). When we look at orders data over a 30 day window, we naively calculate an AOV of $3145.13. Given that we know these shops are selling sneakers, a relatively affordable item, something seems wrong with our analysis. 

Think about what could be going wrong with our calculation. Think about a better way to evaluate this data. 
What metric would you report for this dataset?
What is its value?
The count of the orders were used to calculate the average order value (AOV) instead of the sum.
The  AOV is 357.9 and the metric I used for reporting the dataset is the mode. The most recurring order amount is 153 which is low. and could affect the revenue input.
Click for Solution https://github.com/Mariamuwane/Data-Science-Intern-Challenge/blob/main/shopify_AOV.ipynb


Question 2: For this question you’ll need to use SQL. Follow this link (https://www.w3schools.com/SQL/TRYSQL.ASP?FILENAME=TRYSQL_SELECT_ALL) to access the data set required for the challenge. Please use queries to answer the following questions. Paste your queries along with your final numerical answers below.

How many orders were shipped by Speedy Express in total?
What is the last name of the employee with the most orders?
What product was ordered the most by customers in Germany?

/* Number of Records: 1 
 NumberOfOrders
 54 
 The orders and Shippers tables were joined, the shipper ID for the specified name was used to trace its number of orders. */

/*	Peacock was the employee with the most orders. 
The employees last name was gotten from employee and joined with their orders.
Using their IDs, the number of orders were arranging in descending order. The order with the highest was at the top.	*/

/* Boston crab meat with 160 0rders was the most ordered product in Germany.
The orders details was joined with the product ID,then joined with the customer ID.
With this the customers were traced, and it was specified to note only customers who country was Gernmany.
The products were grouped by their by their number of orders in descending order.
Boston Crab Meat appeared at the top.	*/
Click for Solution https://github.com/Mariamuwane/Data-Science-Intern-Challenge/blob/main/SQLShopify.sql

