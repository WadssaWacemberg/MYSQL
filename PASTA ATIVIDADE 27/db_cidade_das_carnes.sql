CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    setor VARCHAR(255)
);
INSERT INTO tb_categorias (descricao, setor) VALUES
('Aves', 'Congelados'),
('Bovinos', 'Corte Fresco'),
('Suínos', 'Corte Fresco'),
('Legumes', 'Hortifruti'),
('Frutas', 'Hortifruti');

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(8,2),
    quantidade INT,
    categoria_id BIGINT,
    CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_produtos (nome, preco, quantidade, categoria_id) VALUES
('Picanha', 89.90, 50, 2),
('Asinha de Frango', 18.50, 100, 1),
('Costela Suína', 35.00, 40, 3),
('Batata Doce', 5.50, 200, 4),
('Maçã Fuji', 8.90, 150, 5),
('Filé de Peito', 22.00, 80, 1),
('Alcatra', 45.00, 30, 2),
('Banana Prata', 6.50, 120, 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;