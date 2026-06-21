CREATE TABLE fact_sales (
    sales_id NUMBER PRIMARY KEY,
    order_id NUMBER,
    customer_id NUMBER,
    product_id NUMBER,
    date_id NUMBER,
    region_id NUMBER,
    sales_amount NUMBER(10,2),
    quantity NUMBER,

    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    CONSTRAINT fk_date FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    CONSTRAINT fk_region FOREIGN KEY (region_id) REFERENCES dim_region(region_id)
)
;

-- DIMENSION TABLES

CREATE TABLE dim_customer (
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(100),
    email VARCHAR2(100),
    city VARCHAR2(50)
);

CREATE TABLE dim_product (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(100),
    category VARCHAR2(50),
    price NUMBER(10,2)
);

CREATE TABLE dim_date (
    date_id NUMBER PRIMARY KEY,
    full_date DATE,
    year NUMBER,
    quarter NUMBER,
    month NUMBER,
    month_name VARCHAR2(20)
);

CREATE TABLE dim_region (
    region_id NUMBER PRIMARY KEY,
    region_name VARCHAR2(50)
);


-- ============================================
-- 🔥 STEP 1: TRUNCATE TABLES (Correct Order)
-- ============================================

TRUNCATE TABLE fact_sales;
TRUNCATE TABLE dim_customer;
TRUNCATE TABLE dim_product;
TRUNCATE TABLE dim_date;
TRUNCATE TABLE dim_region;

-- ============================================
-- 🔥 STEP 2: INSERT DIMENSION TABLES FIRST
-- ============================================

-- 🌍 dim_region
INSERT INTO dim_region VALUES (401, 'West');
INSERT INTO dim_region VALUES (402, 'South');
INSERT INTO dim_region VALUES (403, 'North');
INSERT INTO dim_region VALUES (404, 'East');

-- 📅 dim_date
INSERT INTO dim_date VALUES (301, DATE '2024-01-05', 2024, 1, 1, 'January');
INSERT INTO dim_date VALUES (302, DATE '2024-01-10', 2024, 1, 1, 'January');
INSERT INTO dim_date VALUES (303, DATE '2024-02-01', 2024, 1, 2, 'February');
INSERT INTO dim_date VALUES (304, DATE '2024-02-15', 2024, 1, 2, 'February');
INSERT INTO dim_date VALUES (305, DATE '2024-03-01', 2024, 1, 3, 'March');

-- 👤 dim_customer
INSERT INTO dim_customer VALUES (101, 'Amit Sharma', '[amit@gmail.com](mailto:amit@gmail.com)', 'Mumbai');
INSERT INTO dim_customer VALUES (102, 'Neha Patil', '[neha@gmail.com](mailto:neha@gmail.com)', 'Pune');
INSERT INTO dim_customer VALUES (103, 'Rahul Jain', '[rahul@gmail.com](mailto:rahul@gmail.com)', 'Delhi');
INSERT INTO dim_customer VALUES (104, 'Pooja Singh', '[pooja@gmail.com](mailto:pooja@gmail.com)', 'Kolkata');
INSERT INTO dim_customer VALUES (105, 'Vikram Rao', '[vikram@gmail.com](mailto:vikram@gmail.com)', 'Hyderabad');

-- 📦 dim_product
INSERT INTO dim_product VALUES (201, 'Laptop', 'Electronics', 55000);
INSERT INTO dim_product VALUES (202, 'Mobile', 'Electronics', 20000);
INSERT INTO dim_product VALUES (203, 'Desk', 'Furniture', 7000);
INSERT INTO dim_product VALUES (204, 'Chair', 'Furniture', 3000);
INSERT INTO dim_product VALUES (205, 'Headphones', 'Accessories', 2000);

COMMIT;

-- ============================================
-- 🔥 STEP 3: INSERT FACT TABLE
-- ============================================

INSERT INTO fact_sales VALUES (1, 1001, 101, 201, 301, 401, 55000, 1);
INSERT INTO fact_sales VALUES (2, 1002, 102, 202, 302, 402, 40000, 2);
INSERT INTO fact_sales VALUES (3, 1003, 103, 203, 303, 403, 7000, 1);
INSERT INTO fact_sales VALUES (4, 1004, 101, 204, 304, 401, 6000, 2);
INSERT INTO fact_sales VALUES (5, 1005, 104, 201, 305, 404, 55000, 1);
INSERT INTO fact_sales VALUES (6, 1006, 105, 205, 303, 402, 4000, 2);
INSERT INTO fact_sales VALUES (7, 1007, 102, 201, 304, 402, 55000, 1);

COMMIT;

-- ============================================
-- ✅ VALIDATION QUERIES
-- ============================================

SELECT COUNT(*) FROM dim_region;
SELECT COUNT(*) FROM dim_date;
SELECT COUNT(*) FROM dim_customer;
SELECT COUNT(*) FROM dim_product;
SELECT COUNT(*) FROM fact_sales;
