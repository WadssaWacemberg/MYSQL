CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classes VARCHAR(255) NOT NULL,
    poderes_especial VARCHAR(255) NOT NULL,
    tipo_dano VARCHAR(50)
);

INSERT INTO tb_classes (nome_classes, poderes_especial, tipo_dano) VALUES 
('Guerreiro', 'Força Sobre-humana', 'Físico'),      
('Tecnológico', 'Armadura de Combate', 'Energia'), 
('Arqueiro', 'Mira Infalível', 'Distância'),       
('Espião', 'Invisibilidade e Agilidade', 'Furtivo'), 
('Místico', 'Magia Ancestral', 'Mágico');          


CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nivel INT,
    ataque INT,
    defesa INT,
    classes_id BIGINT, 
    CONSTRAINT fk_personagens_classes FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classes_id) VALUES
('Homem de Ferro', 80, 4500, 3000, 2), 
('Mulher Maravilha', 95, 5000, 4500, 1), 
('Viúva Negra', 70, 2500, 1500, 4),      
('Capitão América', 85, 3000, 5000, 1),  
('Homem Aranha', 75, 3500, 2000, 4),
('Gavião Arqueiro', 65, 2100, 1200, 3), 
('Thor', 90, 4800, 3500, 1),           
('Feiticeira Escarlate', 88, 5500, 1000, 5); 


SELECT * FROM tb_personagens WHERE ataque > 2000;  
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";


SELECT p.nome, p.nivel, p.ataque, p.defesa, c.nome_classes 
FROM tb_personagens p
INNER JOIN tb_classes c ON c.id = p.classes_id;

SELECT p.nome, p.nivel, p.ataque, p.defesa, c.nome_classes 
FROM tb_personagens p
INNER JOIN tb_classes c ON c.id = p.classes_id 
WHERE c.nome_classes = "mistico";

SELECT p.nome, c.nome_classes FROM tb_personagens p LEFT JOIN tb_classes c ON c.id = p.classes_id;
SELECT p.nome, c.nome_classes FROM tb_personagens p RIGHT JOIN tb_classes c ON c.id = p.classes_id;