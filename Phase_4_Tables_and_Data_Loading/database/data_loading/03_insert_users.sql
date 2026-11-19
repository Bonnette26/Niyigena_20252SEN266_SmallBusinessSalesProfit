INSERT INTO USERS
    (user_id, username, password_hash, role)
VALUES
    (1, 'admin', 'sample_hash_admin_001', 'ADMIN');

INSERT INTO USERS
    (user_id, username, password_hash, role)
VALUES
    (2, 'cashier1', 'sample_hash_cashier_002', 'CASHIER');

COMMIT;