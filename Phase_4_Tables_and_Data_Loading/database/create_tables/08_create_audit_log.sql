CREATE TABLE AUDIT_LOG (
    log_id NUMBER PRIMARY KEY,
    user_id NUMBER,
    action VARCHAR2(100) NOT NULL,
    table_name VARCHAR2(50),
    action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    description VARCHAR2(255),

    CONSTRAINT fk_audit_user
        FOREIGN KEY (user_id)
        REFERENCES USERS(user_id)
);