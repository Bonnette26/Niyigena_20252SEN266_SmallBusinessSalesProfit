CREATE TABLE PRODUCTS (
    product_id NUMBER PRIMARY KEY,
    supplier_id NUMBER,
    product_name VARCHAR2(100) NOT NULL,
    purchase_price NUMBER(10,2) NOT NULL,
    selling_price NUMBER(10,2) NOT NULL,
    quantity NUMBER DEFAULT 0 NOT NULL,

    CONSTRAINT fk_products_supplier
        FOREIGN KEY (supplier_id)
        REFERENCES SUPPLIERS(supplier_id),

    CONSTRAINT chk_purchase_price
        CHECK (purchase_price >= 0),

    CONSTRAINT chk_selling_price
        CHECK (selling_price >= 0),

    CONSTRAINT chk_product_quantity
        CHECK (quantity >= 0)
);