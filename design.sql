CREATE DATABASE DESIGN COLLATE 'utf8_general_ci'

CREATE TABLE governorates (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    governorate VARCHAR(255) NOT NULL,
        PRIMARY KEY(id)


);

CREATE TABLE stores(
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    governorates_id INTEGER UNSIGNED NOT NULL,
    name VARCHAR(255) NOT NULL,
    adress VARCHAR(255) NOT NULL,
        PRIMARY KEY(id),
        FOREIGN key(governorates_id) REFERENCES governorates(id)

);

CREATE TABLE suppliers(
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone INTEGER UNSIGNED NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
    bio TEXT NOT NULL,
    PRIMARY KEY(id),

);

CREATE TABLE products (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    code INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    suppliers_id INTEGER UNSIGNED NOT NULL
    bio TEXT, 
    price INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY(id),  

    FOREIGN key(suppliers_id) REFERENCES suppliers(id)

);

CREATE TABLE product_supplier(
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    product_id INTEGER UNSIGNED NOT NULL,
    supplier_id INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    FOREIGN key(supplier_id) REFERENCES products(id),
    FOREIGN key(product_id) REFERENCES suppliers(id)


);