![Logo](https://unctad.org/sites/default/files/2021-03/2021-03-15_eCommerceCOVID19report-1-1220x675px.jpg)



# Project Background
Olist is a Brazillian e-commerce company that sells all sorts of things from electronic products to food and drinks and was established in 2015. 

The company provided data on Kaggle that shows sales status of various orders, customer information, seller information, types of payment used and the transactions of customers between 2016-2018. This project aims to analyse the data to better understand how users interact with Olist's website to uncover insights.

Insights and recommendations are provided in the following areas:
- **Sales Trends**: Evaluate products that are sold on the website focussing on total revenue, order volume, total voucher claims in dollars and average order volume (AOV)

- **Top Sellers**: on the Platform: Evaluate who are the top sellers on the website to consider giving better visibility

- **Top Selling**: Products: Evaluate which products are the best selling to identify customer demands on the platform

- **Average Review Score**: Provide insights on how a product is rated relative to the average

PowerBI Dashboard **[Link](https://app.powerbi.com/groups/me/reports/16c25ee2-af2d-420d-8fd8-f38a70c2527e/6f057ff21ea215d7744b?bookmarkGuid=fd0dae6e-dda3-4c68-b6ca-b77d23efe81d&bookmarkUsage=1&ctid=64991f7f-44d6-4d8c-9cd4-7862e8cb94c6&portalSessionId=84624b91-0ac2-4715-aa20-f26558ed5bf7&fromEntryPoint=export)**

SQL query for inspecting and checking values **[Link](https://github.com/amirulshafiq98/olist-sales/blob/main/pre-checks.sql)**

SQL query for importing and creating tables  **[Link](https://github.com/amirulshafiq98/olist-sales/blob/main/clean-up.sql)**

SQL query for checking and dashboard preparation **[Link](https://github.com/amirulshafiq98/olist-sales/blob/main/preparation.sql)**



# Data Structure
Olist's database structure is as seen below which compromises of 7 tables: customers, reviews, payments, sellers, orders, order items, products

![Olist E-commerce Schema](https://github.com/user-attachments/assets/a400450b-c739-40a5-8598-6fa7e8a2a1c4)

Prior to the analysis, the product table was translated using excel with the translation file using vlookup. SQL query for inspecting and checking values can be viewed [here](https://github.com/amirulshafiq98/olist-sales/blob/main/pre-checks.sql)



# Executive Summary
#### Overview:
This report primarily focuses on 2017 and 2018 data, as 2016 data only started in October. In 2017, the company averaged R$584,000 per month with a 24% average MoM growth, peaking at R$1.2M in November. In 2018, monthly sales averaged R$956,000, a 63% increase from 2017. Every month in 2018 exceeded R$1M in sales except February, which reached R$966,000. However, please note that data for 2018 is only available up to August.

Total sales grew by 23% YoY from 2017 to 2018, with voucher claims increasing by 9%. AOV and total orders saw smaller YoY increases of 2% and 21%, respectively. In October 2017, sales increased by R$700,000 compared to October 2016, driven by a 14x rise in orders across all categories. The bed & bath category remained the top seller in both years, showing an 11% increase in sales from 2017 to 2018. Throughout both years, the average product review score was consistently 4/5. The following sections will explore key drivers and areas for improvement. These trends highlight both the strengths and areas for potential growth, providing valuable insights for future strategic decisions. The following sections will dive deeper into sales performance, top-selling products, and customer behavior to identify actionable opportunities for continued growth

Below is an overview of the dashboard in PowerBI that can be downloaded **[here](https://app.powerbi.com/groups/me/reports/16c25ee2-af2d-420d-8fd8-f38a70c2527e/6f057ff21ea215d7744b?bookmarkGuid=fd0dae6e-dda3-4c68-b6ca-b77d23efe81d&bookmarkUsage=1&ctid=64991f7f-44d6-4d8c-9cd4-7862e8cb94c6&portalSessionId=84624b91-0ac2-4715-aa20-f26558ed5bf7&fromEntryPoint=export)**

<p align="center">
  <img src="https://github.com/user-attachments/assets/f0ee2e61-0477-466a-88db-105410593c69">
</p>

#### Sales Trends:
- Total sales grew 23% YoY from 2017 to 2018, indicating a strong upward trend going into Q4 of 2018
- The average monthly sales in 2018 (R$956,000) were 63% higher compared to 2017 (R$584,000), suggesting sustained growth throughout the year
- The total number of orders for the bed & bath category increased by 13% YoY, reaching 6,275 in 2018 compared to 5,571 in 2017, highlighting the category’s continued demand
- Total sales in October 2017 rose by R$700,000 from October 2016, with a 14x surge in orders, likely driven by expanded product offerings, more sellers, and increased platform visibility. The pre-holiday shopping season may have also boosted demand.
- Despite steady MoM growth in 2017, December saw a -25% drop, possibly due to early holiday discounts in November (e.g., Black Friday) pulling sales forward. Logistical delays or stock shortages from increased November demand may have further slowed December sales.

<p align="center">
  <img src="https://github.com/user-attachments/assets/e97f8447-2480-4d90-aa74-b1b0b6e1e96b">
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/09e4bc93-4784-4ecb-90dd-bf397aacee9d">
</p>

#### Top Sellers on the Platform:
- The most active seller in 2017 generated R$88,000 in sales (2% of all orders) but saw a 54% decline in 2018 (R$39,000), indicating a shift in market dynamics or competition
- The second most active seller in 2017 remained in the top 10 in 2018 despite a 40% decline in YoY sales, suggesting some level of resilience
- The top seller of 2018 saw a 6x sales increase compared to 2017, demonstrating rapid business expansion despite already averaging 145% MoM growth in 2017
- By August 2018, three sellers surpassed 1,000 orders, matching the highest order volume achieved by any seller in 2017
- Only one seller was in the top three for both 2017 and 2018, showing that top sellers frequently changed between years
- The average MoM growth in 2017 (+24%) was significantly higher than in 2018 (-13%), indicating possible market saturation or increased competition
- Voucher claims increased by 9%, AOV rose by 2%, and total orders grew by 21% YoY, suggesting that sales growth was partially driven by promotional strategies

<p align="center">
    <img src="https://github.com/user-attachments/assets/be0d0b05-f16d-40de-a5de-d79d158d35a1" hspace="10">
    <img src="https://github.com/user-attachments/assets/06ef662c-d328-46a3-bec0-e617a4d48def" hspace="10">
</p>

#### Top Selling Products:
- Bed & bath remained the top category, generating R$604,000 in 2017 and growing by 11% (R$672,000) in 2018
- The top-selling product in 2017 peaked at R$28,000 in sales in September but had zero sales in 2018, indicating a potential product discontinuation or shift in consumer preferences
- The most ordered product in 2017 had 145 orders in Q2, generating R$13,000, which was the same revenue it generated in all of 2018 (January–August), highlighting a loss in momentum
- The best-selling product in 2018 saw a 4x increase in sales, rising from R$13,000 in 2017 to R$53,000 in 2018
- The most ordered product in 2018 surpassed 100 orders in January alone, generating R$34,000, representing a 3x increase compared to 2017
- Despite health & beauty ranking as the second-highest category in orders, only three products made it into the top 10, with just one surpassing 200 orders, suggesting that sales were more fragmented across different SKUs

<p align="center">
    <img src="https://github.com/user-attachments/assets/b2e6768a-c83e-431c-9a56-6e36568a63f0" hspace="10">
    <img src="https://github.com/user-attachments/assets/6454d079-67f5-41ed-99fa-eb149f978d20" hspace="10">
</p>

#### Average Review Score:
- All top 10 sellers in 2017 maintained a 4-star rating or higher for their products
- Only one product in 2017 was top 10 and had a rating below 3.5, indicating that higher-rated products were generally more successful
- The top 10 sellers in 2018 also maintained at least a 4-star rating, with just one top-selling product rated below 4 (2.5 stars)
- A preliminary analysis suggests that products rated above 4.5 tend to have more consistent sales, while those below 3.5 see significantly lower order volumes. However, niche products with lower ratings may still perform well if competition is limited

<p align="center">
  <img src="https://github.com/user-attachments/assets/580fc619-4fd6-4cb7-9718-a257ae3aa9e4">
</p>

# Recommendations
- **Enhance Product Visibility:** Increase the visibility of top-selling products from the previous month on the landing page to capitalise on their popularity and drive additional sales
- **Product Comparison Features:** Implement a feature allowing customers to compare products within the same category, especially since most products maintain high ratings (4 stars or more). This will help customers make more informed purchasing decisions
- **Revise Marketing Strategies:** Given the relatively stable MoM growth in 2018 (+/- 5%) and the -25% MoM drop in December 2017, consider re-evaluating marketing strategies. Implementing loyalty programs, free shipping offers, or volume discounts could encourage more consistent sales and mitigate potential downturns
- **Diversify Product Offerings:** Expand the diversity of products in popular categories like furniture and decor, where some products dominate despite having better-reviewed alternatives. Offering a wider range of options would better cater to varying customer preferences and increase overall sales
- **Incentivise Larger Purchases:** Given the modest 2% increase in AOV from 2017 to 2018, consider strategies like incentivising larger purchases through discounts or promotions for higher-value orders. Cross-selling complementary items could also boost AOV while enhancing the customer experience
- **Focus on Niche Products:** Although some lower-rated products still perform well due to limited competition, focusing on niche products with potential for growth and ensuring they receive adequate marketing support could help capture underserved market segments
- **Optimise Logistics and Stock Management:** Given the unexpected drop in sales in December 2017 due to potential stock shortages or logistical delays, it's essential to streamline inventory management and ensure sufficient stock during peak periods to meet demand and avoid losing out on sales opportunities
