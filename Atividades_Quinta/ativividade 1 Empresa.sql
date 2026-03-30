CREATE DATABASE db_rh_empresa;
USE db_rh_empresa;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100),
    data_admissao DATE,
    departamento VARCHAR(100),
    salario DECIMAL(10, 2)
);

INSERT INTO tb_colaboradores (nome, cargo, data_admissao, departamento, salario) VALUES 
('Wyohanna Wylkemberg', 'ceo', '2023-01-15', 'Administração', 15500.00),
('Wallacy Wyldemberg', 'Analista de RH', '2022-05-10', 'Recursos Humanos', 3200.00),
('Wadssa Wacemberg', 'Engenheira de Software', '2024-02-20', 'Tecnologia', 8900.00),
('Jose Gutemberg', 'Estagiário', '2024-03-01', 'Tecnologia', 1500.00),
('Juliana Costa', 'Gerente de Projetos', '2021-11-12', 'Operações', 9500.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2100.00 WHERE id = 3;
