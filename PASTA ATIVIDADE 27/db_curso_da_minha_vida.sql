CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    area_conhecimento VARCHAR(255) NOT NULL, 
    modalidade VARCHAR(100)
);

INSERT INTO tb_categorias (area_conhecimento, modalidade) VALUES
('Tecnologia', 'EAD'),
('Gestão', 'Semi-presencial'),
('Design', 'EAD'),
('Saúde', 'Online'),
('Idiomas', 'Online');

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(8,2),
    duracao_horas INT,
    categoria_id BIGINT,
    CONSTRAINT fk_cursos_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos (nome, valor, duracao_horas, categoria_id) VALUES
('Java Fullstack', 850.00, 400, 1),
('JavaScript Avançado', 600.00, 120, 1),
('Gestão de Projetos', 450.00, 80, 2),
('UX Design', 700.00, 100, 3),
('Inglês para Negócios', 1200.00, 200, 5),
('Jornada do Desenvolvedor', 550.00, 150, 1),
('Marketing Digital', 300.00, 60, 2),
('Anatomia Aplicada', 900.00, 250, 4);

SELECT * FROM tb_cursos WHERE valor > 500.00;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT p.nome AS Curso, p.valor, c.area_conhecimento AS Categoria
FROM tb_cursos p 
INNER JOIN tb_categorias c ON c.id = p.categoria_id;


SELECT p.nome AS Curso, p.valor, c.area_conhecimento AS Categoria
FROM tb_cursos p 
INNER JOIN tb_categorias c ON c.id = p.categoria_id 
WHERE c.area_conhecimento = 'Tecnologia';

SELECT p.nome AS Curso, p.duracao_horas, c.area_conhecimento AS Categoria
FROM tb_cursos p 
INNER JOIN tb_categorias c ON c.id = p.categoria_id 
WHERE p.nome = 'Anatomia Aplicada';