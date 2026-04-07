🛒 E-Commerce Data Engineering Project (Databricks)

🚀 Overview

This project demonstrates an end-to-end **Data Engineering pipeline** using Databricks and Medallion Architecture (Bronze, Silver, Gold) on a messy e-commerce dataset.

The goal is to transform raw, inconsistent data into clean, analytics-ready datasets and generate meaningful business insights.

---

🏗️ Architecture (Medallion Architecture)

🥉 Bronze Layer (Raw Data)

* Ingested raw dataset without any transformation
* Stored as Delta table
* Maintains original data for traceability

🥈 Silver Layer (Data Cleaning & Transformation)

* Fixed inconsistent date formats
* Cleaned corrupted values (price, quantity)
* Standardized categories and payment methods
* Handled missing values
* Applied data validation rules

🥇 Gold Layer (Business Insights)

* Created aggregated tables for analytics:

  * Total Revenue KPI
  * Category-wise revenue
  * Top selling products
  * Customer spending analysis
  * Order status distribution

---

🔧 Technologies Used

* Databricks
* PySpark
* Delta Lake
* GitHub



📁 Project Structure


ecommerce-data-engineering-project/
│
├── notebooks/
│   ├── 01_bronze_ingestion.py
│   ├── 02_silver_cleaning.py
│   ├── 03_gold_transformation.py
│
├── data/
│   └── sample_dataset.csv
│
└── README.md


📊 Key Transformations

* Handling multiple date formats using `try_to_timestamp`
* Cleaning invalid numeric values (e.g., "300$", "abd")
* Standardizing inconsistent categorical values
* Filtering invalid records
* Creating derived columns like `total_price`
* Implementing data quality checks

---

📈 Business Insights Generated

* 📊 Total Revenue KPI
* 📦 Category-wise sales performance
* 🏆 Top selling products
* 👥 Customer spending patterns
* 📉 Order status distribution (Delivered, Cancelled, Returned)

---

💡 Key Learnings

* Handling real-world messy datasets
* Building scalable data pipelines
* Applying Medallion Architecture
* Managing schema inconsistencies in Spark
* Designing data pipelines for analytics use cases

---
🚀 Future Enhancements
* Integrate Power BI dashboard
* Build RAG-based chatbot for querying data
* Add data pipeline orchestration using workflows

---

👨‍💻 Author

**Vignesh Kumar**
Data Engineering & Analytics Enthusiast

---
