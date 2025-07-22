# 🛒 ecommerce-sales-trend-analysis

This project analyzes sales transaction data from a Pakistan-based online eCommerce store that specializes in all-occasion gifts. The dataset covers purchases made from **January 2025 to June 2025**, with the goal of understanding **monthly sales trends**, **order volume**, and **purchasing behavior** over time.

---

## 📦 Dataset

**Source**: [eCommerce Dataset 2025 on Kaggle](https://www.kaggle.com/datasets/mfayyazgiki/ecommerce)  
**Provider**: M. Fayyaz  
**Filename**: `eCommercePK.csv`  
**Location**: `data/` folder  
**Fields include**:
- InvoiceNo
- StockCode
- Description
- Quantity
- InvoiceDate
- UnitPrice
- CustomerID
- Country

---

## 🔍 Business Task

The main objective of this analysis is to **track and visualize monthly sales performance** by:
- Aggregating total revenue per month
- Counting the number of transactions and quantity sold
- Identifying emerging patterns and seasonality in customer demand

---

## 📊 Tools & Technology

- **Google Cloud BigQuery** for SQL querying and cloud analysis
- **R & ggplot2** for visualization
- **Google Slides / PowerPoint** for stakeholder presentation
- **Git & GitHub** for version control and collaboration

---

## 📁 Project Structure

```plaintext
ecommerce-sales-trend-analysis/
├── data/                
│   └── eCommercePK.csv
├── queries/            
│   └── monthly_sales_query.sql
├── charts/              
│   └── total_sales_chart.png
├── presentation/        
│   └── eCommerce_Sales_Analysis_Presentation.pptx
└── README.md
```

---

## 🧮 SQL Query (Monthly Sales Summary)

```sql
-- queries/monthly_sales_query.sql

SELECT
  order_month,
  COUNT(DISTINCT order_id) AS total_orders,
  SUM(quantity) AS total_quantity_sold,
  SUM(sales) AS total_sales,
  ROUND(AVG(sales), 2) AS avg_sales_per_order
FROM `plenary-ability-463920-b3.ecommerce_dataset_2025.transactions_prepared`
GROUP BY order_month
ORDER BY order_month;
```

---

## 📈 Analysis Output
The final chart, saved in the `charts/` folder, displays:
- Monthly Total Sales
- Number of Orders
- Total Quantity Sold
This visual helps identify patterns such as peak months and inventory spikes.

---

## 🧾 Presentation:
The final presentation summarizes:
- Project purpose and scope
- Data Preparations steps
- Key findings and visualizations
- Actionable recommendations
View it in the `presentation/` folder.

---

## ✅ Next Steps
- Expand analysis to include customer segmentation
- Build product recommendation logic
- Develop a dashboard version using Tableau or Data Studio

---

## 🙌 Acknowledgments
- Dataset courtesy of [M. Fayyaz](https://www.kaggle.com/datasets/mfayyazgiki/ecommerce)
- Tools powered by Google Cloud, BigQuery, SQL, and open source communities.
