CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL, 
    forma VARCHAR(255) NOT NULL  
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    preco DECIMAL(8,2) NOT NULL,
    categorias_id BIGINT,
    CONSTRAINT fk_produtos_categorias FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, forma) VALUES
('Generico', 'Liquido'),
('Generico', 'Comprimido'),
('Referencia', 'Comprimido'),
('Similar', 'Liquido');

INSERT INTO tb_produtos (nome, quantidade, preco, categorias_id) VALUES 
('Dipirona 500mg',  100, 15.50, 1),
('Amoxicilina', 50, 65.00, 1),
('Ibuprofeno Kids',  30, 22.90, 2),
('Allegra',  25, 58.00, 3),
('Bepantol Derma', 15, 45.00, 4),
('Vitamina C', 40, 35.00, 1);


SELECT * FROM tb_produtos WHERE preco > 50.00;  
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00; 
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT p.nome, p.preco, c.tipo, c.forma
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.id = p.categorias_id;

SELECT p.nome, p.preco, c.tipo
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.id = p.categorias_id
WHERE c.tipo = "Generico";

SELECT p.nome, c.tipo FROM tb_produtos p LEFT JOIN tb_categorias c ON c.id = p.categorias_id;
SELECT p.nome, c.tipo FROM tb_produtos p RIGHT JOIN tb_categorias c ON c.id = p.categorias_id;

