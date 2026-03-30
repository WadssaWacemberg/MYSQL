CREATE DATABASE db_registro_escolar;
USE db_registro_escolar;

CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(255) NOT NULL,
    turma VARCHAR(50),
    periodo VARCHAR(20),
    data_nascimento DATE,
    nota_final DECIMAL(3, 1)
);

INSERT INTO tb_estudantes (nome_aluno, turma, periodo, data_nascimento, nota_final) VALUES 
('Wallacy Wyldemberg', '7º Ano A', 'Manhã', '2012-05-15', 10.0),
('Wyohanna Wylkemberg', '3º Ano B', 'Tarde', '2016-08-22', 9.5),
('Enzo Silva', '9º Ano A', 'Manhã', '2012-01-10', 6.5),
('Valentina RSantos', '8º Ano C', 'Manhã', '2013-11-30', 8.2),
('Lucas Neto', '9º Ano A', 'Manhã', '2012-04-05', 5.8),
('Mariana ', '7º Ano B', 'Tarde', '2014-02-14', 7.0),
('Gabriel Silva', '8º Ano C', 'Manhã', '2013-09-09', 4.5),
('Sophia cabral', '6º Ano A', 'Tarde', '2015-06-25', 8.8);

SELECT * FROM tb_estudantes WHERE nota_final > 7.0;

SELECT * FROM tb_estudantes WHERE nota_final < 7.0;

UPDATE tb_estudantes SET nota_final = 7.5 WHERE id = 3;
