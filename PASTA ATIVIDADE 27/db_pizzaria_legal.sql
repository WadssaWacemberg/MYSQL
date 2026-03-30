CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,
    sabores VARCHAR(255), 
    tamanho_padrao VARCHAR(50) NOT NULL
);

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL (8,2) NOT NULL,
    borda_recheada BOOLEAN,
    massa_tipo VARCHAR (50),
    categorias_id BIGINT, 
    CONSTRAINT fk_pizzas_categorias FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, tamanho_padrao) VALUES
('Salgada Tradicional', 'Grande'),
('Salgada Especial', 'Grande'),
('Doce Gourmet', 'Média'),
('Vegana', 'Média'),
('Premium', 'Gigante');

INSERT INTO tb_pizzas (nome, preco, borda_recheada, massa_tipo, categorias_id) VALUES 
('Calabresa', 42.00, false, 'Fina', 1),
('Muçarela', 38.00, false, 'Tradicional', 1),
('Frango com Catupiry', 55.00, true, 'Tradicional', 2),
('Portuguesa', 48.00, true, 'Grossa', 2),
('Brigadeiro Especial', 60.00, false, 'Fina', 3),
('Romeu e Julieta', 46.00, false, 'Fina', 3),
('Shimeji Veggie', 75.00, false, 'Integral', 4),
('Trufa Negra', 110.00, true, 'Italiana', 5);

SELECT * FROM tb_pizzas WHERE preco > 45;  
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100; 
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT p.nome, p.preco, c.tipo, c.tamanho_padrao 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON c.id = p.categorias_id;

SELECT p.nome, p.preco, c.tipo, c.tamanho_padrao 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON c.id = p.categorias_id
WHERE c.tipo LIKE "%Doce%"; 

SELECT p.nome, c.tipo FROM tb_pizzas p LEFT JOIN tb_categorias c ON c.id = p.categorias_id;
SELECT p.nome, c.tipo FROM tb_pizzas p RIGHT JOIN tb_categorias c ON c.id = p.categorias_id;