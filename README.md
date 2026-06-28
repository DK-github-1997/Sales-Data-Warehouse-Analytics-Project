## Author Dnyaneshvar Mali
## Created on 21-Jun-2026 

# Sales-Data-Warehouse-Analytics-Project
This project demonstrates the design and implementation of a Sales Data Warehouse using SQL and cloud-based architecture. It follows a layered approach (Staging → Curated → Consumption) and applies dimensional modeling (Star Schema) to enable efficient analytics and reporting.

sales-data-warehouse/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── docs/
│   ├── Architecture_Diagram.png
│   ├── Star_Schema.png
│   ├── Data_Flow.png
│   ├── Data_Dictionary.xlsx
│   └── Business_Requirements.pdf
│
├── data/
│   ├── source/
│   ├── staging/
│   └── sample_output/
│
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_insert_dimension_data.sql
│   ├── 03_insert_fact_data.sql
│   ├── 04_constraints.sql
│   ├── 05_indexes.sql
│   ├── 06_views.sql
│   ├── 07_materialized_views.sql
│   ├── 08_validation.sql
│   ├── 09_business_queries.sql
│   ├── 10_performance_tuning.sql
│   └── 11_cleanup.sql
│
├── etl/
│   ├── etl_process.sql
│   ├── incremental_load.sql
│   └── merge_upsert.sql
│
├── reports/
│   ├── KPI_Report.sql
│   ├── Executive_Dashboard.sql
│   └── Sales_Analysis.sql
│
└── screenshots/
    ├── dashboard.png
    ├── query_result.png
    └── execution_plan.png
