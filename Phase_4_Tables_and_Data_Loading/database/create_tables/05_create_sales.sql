CREATE TABLE SALES (
    sale_id VARCHAR2(20) PRIMARY KEY,
    customer_id NUMBER,
    user_id NUMBER,
    sale_date DATE NOT NULL,
    total_amount NUMBER(12,2) DEFAULT 0 NOT NULL,

    CONSTRAINT fk_sale_customer
        FOREIGN KEY (customer_id)
        REFERENCES CUSTOMERS(customer_id),

    CONSTRAINT fk_sale_user
        FOREIGN KEY (user_id)
        REFERENCES USERS(user_id),

    CONSTRAINT chk_sale_total
        CHECK (total_amount >= 0)
); 