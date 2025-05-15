# **Rakamin-KF-Analytics**
This repository contains the final assignment for the **Project-Based Virtual Internship** at Rakamin Academy in collaboration with Kimia Farma as a Big Data Analytics.

## Business Understanding
The company wants to evaluate Kimia Farma's business performance from **2020 to 2023** to understand growth trends, operational efficiency, and areas that need improvement. This project aims to find useful insights from historical data to help the company make better decisions in the future.

## Business Problem
Based on the business problem above, an interactive dashboard is needed to visualize the processed data and help analyze Kimia Farma’s business performance. The problem can be formulated into the following business questions to discover useful insights:
1. Which province branch has the highest number of transactions?
2. Which product gives the highest profit?
3. Which province branch has the highest net sales?
4. Which branch has a high rating but low transactions?
5. How does Kimia Farma’s revenue compare from year to year?
6. What is the total profit distribution by province shown in an Indonesia Geo Map?

## Project Scope
In this final project, the dataset is analyzed using BigQuery Sandbox by using SQL JOIN ON queries to enable working with data stored in different tables within the kimia_farma database. After that, a dashboard is created using Looker Studio, which connects to the data in BigQuery.
In short:
* BigQuery Sandbox – Used for processing and combining data.
* Looker Studio – Used for showing the analysis results in a dashboard.

## Business Dasboard
The dashboard shows data in the form of actual numbers and visual charts. Here is the explanation of each feature in the dashboard:

![Image](https://github.com/user-attachments/assets/6d1c9487-f1d5-40ed-bd14-9e378663cd3d)

1. **Key Performance Indicators (KPIs) that show real-time data counts**
The summary section is used to display the company’s actual data, including:
* Total Profit
* Total Sales
* Total Number of Customers
* Total Transactions
* Total Products
* Average Branch Rating

2. **Interactive visualizations using charts and tables**
* Bar Chart 10 Cabang Provinsi dengan Transaksi Tertinggi: Shows insights about which provinces have the highest number of transactions.
* Pie Chart Total Profit per Produk: Displays a comparison of profit for each product.
* Bar Chart 10 Cabang Provinsi dengan Nett Sales Tertinggi: Highlights the provinces with the highest nett sales values.
* Pivot Table 5 Cabang dengan Rating Tertinggi namun Transaksi Terendah: Shows branches that have high customer ratings but low transaction volume.
* Line Chart Perbandingan Pendapatan per Tahun: Visualizes revenue trends from 2020 to 2023.
* Geo Map Total Profit per Provinsi di Indonesia: Displays a map of Indonesia showing total profit by province.

## Conclusion
From the dashboard, we can find several key insights about the business performance of Kimia Farma, including:
1. West Java Province had the highest total profit compared to other provinces.
2. The product group with the highest profit was Psycholeptics, Hypnotics & Sedative Drugs.
3. West Java also recorded the highest net sales.
4. The branch in North Sumatra Province, especially in Pematangsiantar City, had a high customer rating but low transaction rating.
5. The year 2022 was the year with the highest company revenue during the analysis period.

## Business Recommendations
* Review the 2022 strategy that gave the highest revenue, and focus on keeping top-performing products and branches.
* Improve stock and distribution in West Java, North Sumatra, and Central Java. Apply the same strategy in other provinces.
* Maximize sales in top provinces, and offer discounts in areas with lower net sales.
* Use customer feedback to improve the transaction process.
* Focus on high-profit products (like Psycholeptics), and promote low-profit products through customer education.
