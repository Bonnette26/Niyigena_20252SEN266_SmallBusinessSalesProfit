CREATE TABLE SALE_DETAILS (
    sale_id VARCHAR2(20),
    product_id NUMBER,
    quantity NUMBER NOT NULL,
    unit_price NUMBER(10,2) NOT NULL,
    subtotal NUMBER(12,2) NOT NULL,

    CONSTRAINT pk_sale_details
        PRIMARY KEY (sale_id, product_id),

    CONSTRAINT fk_details_sales
        FOREIGN KEY (sale_id)
        REFERENCES SALES(sale_id),

    CONSTRAINT fk_details_product
        FOREIGN KEY (product_id)
        REFERENCES PRODUCTS(product_id),

    CONSTRAINT chk_details_quantity
        CHECK (quantity > 0),

    CONSTRAINT chk_details_price
        CHECK (unit_price >= 0),

    CONSTRAINT chk_details_subtotal
        CHECK (subtotal >= 0)
);