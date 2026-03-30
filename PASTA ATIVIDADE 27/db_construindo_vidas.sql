CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    departamento VARCHAR(255) NOT NULL, 
    unidade_medida VARCHAR(50)
);
INSERT INTO tb_categorias (departamento, unidade_medida) VALUES
('Hidráulica', 'Peça'),
('Alvenaria', 'Saco'),
('Elétrica', 'Metro'),
('Pintura', 'Lata'),
('Ferramentas', 'Unidade');

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(8,2),
    estoque INT,
    categoria_id BIGINT,
    CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- ALIMENTANDO OS FILHOS
INSERT INTO tb_produtos (nome, preco, estoque, categoria_id) VALUES
('Tubo PVC 100mm', 45.00, 30, 1),
('Cimento Portland 50kg', 38.00, 100, 2),
('Cabo Flexível 2.5mm', 120.00, 500, 3),
('Tinta Acrílica Branca 18L', 250.00, 20, 4),
('Furadeira de Impacto', 320.00, 10, 5),
('Torneira Gourmet', 180.00, 15, 1),
('Argamassa ACIII', 25.00, 80, 2),
('Disjuntor 20A', 18.90, 40, 3);

SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT p.*, c.departamento FROM tb_produtos p 
INNER JOIN tb_categorias c ON c.id = p.categoria_id WHERE c.departamento = 'Hidráulica';