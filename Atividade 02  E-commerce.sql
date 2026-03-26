CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    categoria VARCHAR(100),
    quantidade_estoque INT,
    marca VARCHAR(50),
    preco DECIMAL(10, 2)
);

INSERT INTO tb_produtos (nome_produto, categoria, quantidade_estoque, marca, preco) VALUES 
('Iphone', 'Eletrônicos', 50, 'TechBrand', 12500.00),
('Mouse Gamer', 'Periféricos', 150, 'Lojas games', 150.00),
('Monitor 24"', 'Hardware', 30, 'Philips', 890.00),
('Teclado ', 'Periféricos', 80, 'Microsoft', 450.00),
('Cabo HDMI 2m', 'Acessórios', 200, 'LinkUp', 45.00),
('Macbook', 'Computadores', 15, 'Apple', 15200.00),
('Headset Wireless', 'Áudio', 60, 'Sony', 650.00),
('Suporte Notebook', 'Acessórios', 100, 'Shopee', 89.90);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 500.00 WHERE id = 4;