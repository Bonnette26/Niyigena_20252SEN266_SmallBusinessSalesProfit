-- =====================================================
-- PROJECT: Small Business Sales and Profit Tracking
-- PHASE IV: TABLE CREATION
-- DATABASE: SBSP_PDB_20252SEN266
-- =====================================================

-- 1. SUPPLIERS
CREATE TABLE SUPPLIERS (
    supplier_id NUMBER GENERATED ALWAYS AS IDENTITY,
    supplier_name VARCHAR2(150) NOT NULL,
    contact_information VARCHAR2(255),
    CONSTRAINT pk_suppliers PRIMARY KEY (supplier_id)
);

-- 2. CUSTOMERS
CREATE TABLE CUSTOMERS (
    customer_id NUMBER GENERATED ALWAYS AS IDENTITY,
    external_customer_id NUMBER,
    country VARCHAR2(100),
    CONSTRAINT pk_customers PRIMARY KEY (customer_id),
    CONSTRAINT uq_external_customer UNIQUE (external_customer_id)
);

-- 3. PRODUCTS
CREATE TABLE PRODUCTS (
    product_id NUMBER GENERATED ALWAYS AS IDENTITY,
    stock_code VARCHAR2(50),
    description VARCHAR2(255),
    supplier_id NUMBER,
    CONSTRAINT pk_products PRIMARY KEY (product_id),
    CONSTRAINT uq_product_stock_code UNIQUE (stock_code),
    CONSTRAINT fk_product_supplier
        FOREIGN KEY (supplier_id)
        REFERENCES SUPPLIERS(supplier_id)
);

-- 4. USERS
CREATE TABLE USERS (
    user_id NUMBER GENERATED ALWAYS AS IDENTITY,
    username VARCHAR2(50) NOT NULL,
    role VARCHAR2(30) NOT NULL,
    CONSTRAINT pk_users PRIMARY KEY (user_id),
    CONSTRAINT uq_users_username UNIQUE (username)
);

-- 5. SALES
CREATE TABLE SALES (
    invoice_no VARCHAR2(20),
    invoice_date DATE NOT NULL,
    customer_id NUMBER,
    CONSTRAINT pk_sales PRIMARY KEY (invoice_no),
    CONSTRAINT fk_sales_customer
        FOREIGN KEY (customer_id)
        REFERENCES CUSTOMERS(customer_id)
);

-- 6. SALE_DETAILS
CREATE TABLE SALE_DETAILS (
    sale_detail_id NUMBER GENERATED ALWAYS AS IDENTITY,
    invoice_no VARCHAR2(20) NOT NULL,
    product_id NUMBER NOT NULL,
    quantity NUMBER(10,2) NOT NULL,
    unit_sale_price NUMBER(10,2) NOT NULL,
    unit_cost_at_sale NUMBER(10,2),
    CONSTRAINT pk_sale_details PRIMARY KEY (sale_detail_id),
    CONSTRAINT fk_detail_sales
        FOREIGN KEY (invoice_no)
        REFERENCES SALES(invoice_no),
    CONSTRAINT fk_detail_products
        FOREIGN KEY (product_id)
        REFERENCES PRODUCTS(product_id),
    CONSTRAINT chk_sale_price CHECK (unit_sale_price >= 0),
    CONSTRAINT chk_unit_cost CHECK (
        unit_cost_at_sale IS NULL OR unit_cost_at_sale >= 0
    )
);

-- 7. EXPENSES
CREATE TABLE EXPENSES (
    expense_id NUMBER GENERATED ALWAYS AS IDENTITY,
    expense_date DATE NOT NULL,
    description VARCHAR2(255),
    amount NUMBER(12,2) NOT NULL,
    CONSTRAINT pk_expenses PRIMARY KEY (expense_id),
    CONSTRAINT chk_expense_amount CHECK (amount > 0)
);

-- 8. AUDIT_LOG
CREATE TABLE AUDIT_LOG (
    audit_id NUMBER GENERATED ALWAYS AS IDENTITY,
    user_id NUMBER,
    action VARCHAR2(100) NOT NULL,
    action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_audit_log PRIMARY KEY (audit_id),
    CONSTRAINT fk_audit_user
        FOREIGN KEY (user_id)
        REFERENCES USERS(user_id)
);

-- END OF TABLE CREATION