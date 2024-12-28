CREATE DATABASE store CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE store;

CREATE TABLE Products (
    id               INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id       VARCHAR(12) NOT NULL UNIQUE,
    product_name     VARCHAR(255) NOT NULL,
    product_price    DECIMAL(10, 2) NOT NULL,
    product_article  VARCHAR(255) NOT NULL,
    product_quantity INT NOT NULL,
    date_create      DATETIME NOT NULL,
    is_hidden        BOOLEAN NOT NULL DEFAULT FALSE
);

INSERT INTO Products 
    (product_id, product_name, product_price, product_article, product_quantity, date_create)
VALUES 
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP()),
    (SUBSTR(MD5(RAND()), 1, 12), 'Lorem Ipsum', 999.99, 'Lorem Ipsum', 10, UTC_TIMESTAMP());
