CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	ID_CLASSE BIGINT AUTO_INCREMENT PRIMARY KEY,
    CLASSE VARCHAR(30),
    HABILIDADE VARCHAR(30),
    ARMA VARCHAR(30)
);

CREATE TABLE tb_personagens(
	ID_PERSONAGEM BIGINT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(40),
    HP INT,
    DEFESA INT,
    ATAQUE INT,
    GENERO CHAR,
    CLASSE BIGINT,
    FOREIGN KEY (CLASSE) REFERENCES tb_classes(ID_CLASSE)
);

INSERT INTO tb_classes (CLASSE, HABILIDADE, ARMA) VALUES ("Mago", "Magia branca", "Cajado");
INSERT INTO tb_classes (CLASSE, HABILIDADE, ARMA) VALUES ("Cavaleiro", "Matar inimigos", "Espada");
INSERT INTO tb_classes (CLASSE, HABILIDADE, ARMA) VALUES ("Arqueiro", "Flechas afiadas", "Arco e flecha");
INSERT INTO tb_classes (CLASSE, HABILIDADE, ARMA) VALUES ("Druída", "Plantas venenosa", "Cajado");
INSERT INTO tb_classes (CLASSE, HABILIDADE, ARMA) VALUES ("Espadachim", "Agilidade", "Espada");


INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("Claudia", 2500, 1500, 2100,"F", 1);
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("Monica", 1500, 3000, 1200,"F", 2);
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("Dundor", 5000, 2000, 3000,"M", 4);
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("Bartolomeu", 2000, 1000, 2500,"M", 3);
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("Glaze", 2200, 1100, 2800,"F", 5);
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("Wavespring", 3500, 1500, 3000,"F", 1);
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("Thor", 2500, 1500, 1100,"M", 3);
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("Lynx", 2500, 1800, 3200,"F", 5);


SELECT * FROM tb_personagens WHERE ATAQUE > 2000;

SELECT * FROM tb_personagens WHERE ATAQUE > 1000 AND ATAQUE < 2000;

SELECT * FROM tb_personagens WHERE NOME LIKE "C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.CLASSE = tb_classes.ID_CLASSE;


SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.CLASSE = 5 AND tb_classes.ID_CLASSE= 5;

 
 
