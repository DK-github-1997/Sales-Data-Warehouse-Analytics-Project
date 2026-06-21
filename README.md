## Author Dnyaneshvar Mali
## 21-Jun-2026 

# Sales-Data-Warehouse-Analytics-Project
This project demonstrates the design and implementation of a Sales Data Warehouse using SQL and cloud-based architecture. It follows a layered approach (Staging → Curated → Consumption) and applies dimensional modeling (Star Schema) to enable efficient analytics and reporting.

🏗️ Architecture
Raw Data (CSV / Source Systems)
        ↓
Staging Layer (S3 / Raw Tables)
        ↓
ETL Processing (Python / AWS Glue)
        ↓
Curated Layer (Cleaned Data)
        ↓
Data Warehouse (Star Schema - Redshift)
        ↓
Consumption Layer (Views / Aggregates)
        ↓
BI Tools (Tableau / Power BI)
