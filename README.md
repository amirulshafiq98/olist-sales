![Logo](https://unctad.org/sites/default/files/2021-03/2021-03-15_eCommerceCOVID19report-1-1220x675px.jpg)



# Project Background
Olist is a Brazillian e-commerce company that sells all sorts of things from electronic products to food and drinks and was established in 2015. 

The company provided data on Kaggle that shows sales status of various orders, customer information, seller information, types of payment used and the transactions of customers between 2016-2018. This project aims to analyse the data to better understand how users interact with Olist's website to uncover insights.

Insights and recommendations are provided in the following areas:
- **Sales Trends**: Evaluate products that are sold on the website focussing on total revenue, order volume, total voucher claims in dollars and average order volume (AOV)

- **Top Sellers**: on the Platform: Evaluate who are the top sellers on the website to consider giving better visibility

- **Top Selling**: Products: Evaluate which products are the best selling to identify customer demands on the platform

- **Average Review Score**: Provide insights on how a product is rated relative to the average

PowerBI Dashboard **[Link](https://www.google.com)**

SQL query for inspecting and checking values **[Link](https://github.com/amirulshafiq98/olist-sales/blob/main/pre-checks.sql)**

SQL query for importing and creating tables  **[Link](https://github.com/amirulshafiq98/olist-sales/blob/main/clean-up.sql)**

SQL query for checking and dashboard preparation **[Link](https://github.com/amirulshafiq98/olist-sales/blob/main/preparation.sql)**



# Data Structure
Olist's database structure is as seen below which compromises of 7 tables: customers, reviews, payments, sellers, orders, order items, products

![Schema](https://via.placeholder.com/468x300?text=App+Screenshot+Here)

Prior to the analysis, the product table was translated using excel with the translation file using vlookup. SQL query for inspecting and checking values can be viewed [here](https://github.com/amirulshafiq98/olist-sales/blob/main/pre-checks.sql)



# Executive Summary
#### Overview:
As the data for 2016 only started from October, majority of this report will cover 2017 and 2018 data specifically. During the entirety of 2017, the company averaged R$584,000 per month with an average MoM growth of 24% with an annual high of R$1.2M in November. In 2018, the average sales per month was R$956,000, which was 63% higher than in 2017. Both May and March 2018 matched the sales high of the previous year with every single month generating more than R$1M with the exception being February (R$966,000). However, do note that data for 2018 was only up to August.

The total sales generated saw a YoY increased from 2017 to 2018 of 23% while voucher claims increased by 9%. AOV and total orders increased by 2% and 21% YoY from 2017 to 2018 respectively. Total sales from October 2017 saw a R$700,000 increase from October 2016 with a 14x increase in total orders across all product categories. The most ordered product category in both 2017 and 2018 was bed bath tables which saw a YoY increase in sales of 11%. The average review score for each of the products sold was 4/5 across all months. The following sections will cover in greater detail other contributing factors and highlight key areas for improvement. 

Below is an overview of the dashboard in PowerBI that can be downloaded **[here](https://www.google.com)**

![Overview](https://github.com/user-attachments/assets/de35f378-7d64-4a90-ae87-8e9740a26410)

#### Sales Trends:
- The total sales generated saw a YoY increased from 2017 to 2018 of 23%
- The average sales per month was 63% higher in 2018 (R$956,000) compared to 2017 (R$584,000)
- The total amount of orders of bed bath tables in the whole of 2018 (6,275) surpassed the total in 2017 (5,571) by 13%
- Average MoM growth was +24% in 2017 which was higher than 2018 at -13%
- Voucher claims increased by 9%, AOV increased by 2% while total orders increased by 21% YoY from 2017 to 2018
- Total sales from October 2017 saw a R$700,000 increase from October 2016 with a 14x increase in total orders 
- 2017 saw mostly increased sales MoM, despite seeing the highest decrease of -25% in December where it should have been one of the highest as it was the holiday season

![Sales Trends](https://via.placeholder.com/468x300?text=App+Screenshot+Here)

#### Top Sellers on the Platform:
- The most active seller in 2017 accounted for 2% of all orders accounting for R$88,000 in sales before seeing a 54% decrease (R$39,000) in the following year
- The second most active seller in 2017 was still in the top 10 most active sellers in 2018 but did see a decrease in sales of 40% YoY
- The top seller in 2018 increased their sales by 6x compared to the previous year despite averaging a MoM growth of 145% in 2017
- Three sellers by August 2018 managed over 1000 orders which matches the highest order record in 2017
- Only 1 seller each in 2017 and 2018 was in the top 3 for most orders and sales in their respective years

![Top Sellers](https://via.placeholder.com/468x300?text=App+Screenshot+Here)

#### Top Selling Products:
- Bed bath tables as a category had the most amount of orders in 2017 generating R$604,000 which was improved upon in 2018 with an increase of 11% (R$672,000)
- The top selling product in 2017 reached a high of R$28,000 sales in September with no sales being done in 2018
- The most ordered product in 2017 had 145 orders in Q2 generating R$13,000 which is the same as the the total revenue generated by the product in 2018 between January to August
- The top selling product in 2018 increased its sales from the previous year by 4x (R$13,000 - R$53,000) 
- The most ordered product in 2018 saw over 100 orders in January with a total revenue of R$34,000, seeing a 3x increase from 2017
- Despite health & beauty products having the second most amount of orders in 2018, only three products were in the top 10 with only 1 having at least 200 orders in the same year

![Top Products](https://via.placeholder.com/468x300?text=App+Screenshot+Here)

#### Average Review Score:
- All of the top 10 sellers in 2017 had a review rating of 4 or higher for their products
- Only 1 product in the top 10 most sold had a rating below 3.5 in 2017
- The top 10 sellers in 2018 had at least a 4 star rating with only 1 product in the top 10 having below a 4 star rating (2.5)

![Average Score](https://via.placeholder.com/468x300?text=App+Screenshot+Here)




# Recommendations
- Increase visibility of products that were ordered the most from the month prior to the landing page on the website to generate more sales
- Since most products were rated at least 4 stars, providing an option for customers to compare products wihin the same category would allow them to make informed decisions
- As 2018 saw MoM growth be within +-5%, re-evaluating marketing methods by incorporating loyalty programs, free shipping and volume discounts could increase sales to avoid a possible downturn as seen in December 2017 (-25% MoM growth)
- Increasing diversity of options in certain product categories would allow to better serve customer needs as some product categories like furniture decor have 1 product that is being purchased overwhelmingly more than the others despite other products having better reviews
- As AOV only saw a 2% increase from 2017 to 2018, strategies like incentivising larger purchases and cross-selling by suggesting complimentary items should be considered
