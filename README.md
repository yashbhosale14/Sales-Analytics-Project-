
# Sales Analytics Project

An end-to-end **Sales Analytics** project using **Python, Pandas, NumPy, SQL, Power BI, DAX, and Excel** to analyze sales performance, profitability, customer contribution, product performance, and regional trends.

##  Project Overview

This project demonstrates an end-to-end data analytics workflow, starting from data validation and transformation in Python, followed by exploratory data analysis, SQL-based business analysis, and interactive dashboard development in Power BI.

The analysis is based on **9,994 sales records across 25 columns** and focuses on identifying business trends and performance patterns that can support data-driven decision-making.

### Analytics Workflow

**Data → Python Cleaning → Exploratory Data Analysis → SQL Analysis → Power BI Dashboard → Business Insights**

---

##  Dataset

The dataset contains sales transaction-level information covering:

- Orders and shipping details
- Customers and customer segments
- Products and categories
- Geographic information
- Sales, quantity, discount, and profit
- Order and shipping dates

### Dataset Details

| Attribute | Details |
|---|---|
| Records | 9,994 |
| Columns | 25 |
| Data Type | Sales transaction data |
| Domain | Sales Analytics |

### Key Fields

- Order ID
- Order Date
- Ship Date
- Ship Mode
- Customer ID
- Customer Name
- Segment
- City
- State
- Region
- Product ID
- Product Name
- Category
- Sub-Category
- Sales
- Quantity
- Discount
- Profit

---

##  Python Analysis

Python was used for data preparation, validation, exploratory analysis, and visualization.

### Libraries Used

- **Pandas** – Data loading, cleaning, transformation, grouping, and aggregation
- **NumPy** – Numerical calculations and derived metrics
- **Matplotlib** – Data visualization
- **Seaborn** – Statistical and categorical visualizations

### Data Preparation

The Python workflow includes:

- Loading and inspecting the dataset
- Checking dataset structure and data types
- Validating missing values
- Checking duplicate records
- Standardizing date fields
- Converting numerical columns to appropriate data types
- Cleaning categorical fields
- Creating derived analytical metrics

### Exploratory Data Analysis

The analysis covers:

- Yearly and monthly sales trends
- Regional sales and profitability
- Category and sub-category performance
- Product performance
- Customer contribution
- Segment-level performance
- Sales and profit relationships
- Profitability analysis

---

##  SQL Analysis

SQL was used to perform business-oriented analysis and validate key results.

The SQL analysis covers:

1. Overall sales and profit performance
2. Yearly sales and profit trends
3. Monthly sales patterns
4. Category and sub-category performance
5. Top 10 customers by sales
6. Customer segment performance
7. Customer ranking using window functions
8. Best-selling products within categories
9. High-sales but low-profit products
10. Regional sales and profitability

### SQL Concepts Used

- `SELECT`
- `WHERE`
- `GROUP BY`
- `HAVING`
- `ORDER BY`
- Aggregate functions
- `COUNT()`
- `COUNT(DISTINCT)`
- `SUM()`
- `AVG()`
- `RANK()`
- Window functions
- `PARTITION BY`
- Subqueries

---

##  Power BI Dashboard

Power BI was used to transform the analysis into an interactive business intelligence dashboard.

### Dashboard KPIs

- Total Sales
- Total Profit
- Total Orders
- Total Customers
- Total Units Sold
- Profit Margin

### Dashboard Analysis

The dashboard provides insights into:

- Sales performance by region
- Sales performance by category
- Sales by customer segment
- Sales trends over time
- Product performance
- Customer performance
- Profitability by sub-category
- Geographic sales distribution
- Regional performance

### Interactivity

The dashboard includes interactive filters and slicers to analyze performance across different:

- Years
- Regions
- Categories
- Customer Segments

### DAX

DAX measures were created to calculate key business metrics such as:

- Total Sales
- Total Profit
- Total Orders
- Total Customers
- Total Units Sold
- Profit Margin

---

##  Key Business Insights

The analysis identified several important sales and profitability patterns:

- **West** was the highest-performing region by sales.
- **Technology** was the leading category by sales.
- **Consumer** represented the largest customer segment by sales contribution.
- Sales and profitability varied significantly across product sub-categories.
- Several products generated strong sales but comparatively low profitability, highlighting opportunities for pricing, discount, and product-level review.
- Customer-level analysis helped identify the highest-value customers contributing to overall revenue.

---

##  Tools & Technologies

| Category | Tools |
|---|---|
| Programming | Python |
| Data Analysis | Pandas, NumPy |
| Visualization | Matplotlib, Seaborn |
| Database / Querying | SQL |
| Business Intelligence | Power BI |
| Calculations | DAX |
| Spreadsheet | Microsoft Excel |

---

##  Project Structure

```text
Sales Analytics Project/
│
├── README.md
│
├── data/
│   └── sales_data.csv
│
├── python/
│   └── sales_analysis.ipynb
│
├── sql/
│   └── sales_analysis.sql
│
├── powerbi/
│   └── Sales_Analytics_Dashboard.pbix
│
├── screenshots/
│   └── sales_analytics_dashboard.png
│
└── requirements.txt
