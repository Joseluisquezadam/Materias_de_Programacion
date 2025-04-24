CREATE DATABASE gestion_articulos;
USE gestion_articulos;

CREATE TABLE articulos (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);