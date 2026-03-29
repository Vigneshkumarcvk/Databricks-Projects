🚀 AdventureWorks Sales Analytics | Databricks Project

📌 Project Overview

This project demonstrates an **end-to-end data engineering pipeline** built using Databricks and the AdventureWorks dataset.
The goal is to transform raw sales data into **business-ready insights** using a layered architecture approach.

🧱 Architecture
        Raw Data (CSV Files)
                │
                ▼
        🥉 Bronze Layer (Raw Ingestion)
                │
                ▼
        🥈 Silver Layer (Cleaned Data)
                │
                ▼
        🥇 Gold Layer (Business Aggregates)
                │
                ▼
        📊 Analytics / Dashboard

⭐ Data Model (Star Schema)

                  dim_customers
                        │
                        │
dim_products ──── gold_sales (FACT) ──── dim_calendar
                        │
                        │
                  dim_territories

📂 Dataset

* AdventureWorks Sales Data (2015, 2016, 2017)
* Customer Data
* Product Data
* Product Categories & Subcategories
* Territory Data
* Calendar Data

⚙️ Tech Stack

* 🧠 Databricks (SQL Editor)
* ⚡ Delta Lake
* 🐍 PySpark (optional)
* 🗄️ SQL
* 🔗 GitHub (Version Control)

🔄 Data Pipeline

🥉 Bronze Layer

* Raw ingestion of CSV files
* Combined multi-year data (2015–2017)

🥈 Silver Layer

* Data cleaning and transformation
* Standardized schema
* Removed invalid records

🥇 Gold Layer

* Star schema implementation
* Fact table joined with dimension tables
* Business-ready dataset

📊 Key Business Insights

* 📈 Sales trends over time (Year/Month)
* 🏆 Top-performing products
* 👤 High-value customers
* 🌍 Region-wise sales distribution
* 📦 Order volume analysis (based on quantity)

🧠 Key Features

* Multi-year data consolidation
* Star schema modeling
* Layered data architecture (Bronze, Silver, Gold)
* Scalable and reusable SQL pipeline
* Business-focused analytics

📁 Project Structure


adventureworks-databricks-project/
│
├── sql/
│   ├── 01_bronze_layer.sql
│   ├── 02_silver_layer.sql
│   ├── 03_gold_layer.sql
│
├── architecture/
│   └── architecture.png
│
├── README.md


🚀 How to Run

1. Upload dataset into Databricks
2. Run Bronze layer SQL scripts
3. Run Silver layer transformations
4. Run Gold layer queries
5. Analyze results using SQL or dashboards

🎯 Outcome

Built a **scalable data pipeline and analytics model** using Databricks, enabling efficient analysis of sales performance across multiple dimensions.

🎤 Interview Explanation

> Designed and implemented an end-to-end data pipeline using Databricks with Bronze, Silver, and Gold architecture.
> Built a star schema model integrating multiple dimension tables and performed business analytics on top of the curated data.

🔥 Future Enhancements

* Real-time data ingestion (Streaming)
* Power BI / Tableau dashboard integration
* Incremental data loading (MERGE)
* Performance optimization (ZORDER, Partitioning)

🙌 Author

**Vignesh Kumar**
