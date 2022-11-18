
 CREATE DATABASE db_cidade_dos_vegetais;
 
 USE db_cidade_dos_vegetais;
 
 
 CREATE TABLE tb_categorias(
	id_categorias BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR (50),
    tipo VARCHAR(50)
 );
 
 CREATE TABLE tb_produtos(
	id_produtos BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
	valor DECIMAL(9,2),
    un_medida CHAR (2),
    quantidade FLOAT,
    categoria BIGINT,
    FOREIGN KEY (categoria) REFERENCES tb_categorias(id_categorias)
 );
 

 INSERT INTO tb_categorias(categoria, tipo) VALUES("Frutas","orgânicas");
 INSERT INTO tb_categorias(categoria, tipo) VALUES("Frutas","convencionais");
 INSERT INTO tb_categorias(categoria, tipo) VALUES("Vegetais","orgânicas");
 INSERT INTO tb_categorias(categoria, tipo) VALUES("Vegetais","convencionais");
 INSERT INTO tb_categorias(categoria, tipo) VALUES("Verduras","orgânicas");
 INSERT INTO tb_categorias(categoria, tipo) VALUES("Verduras","convencionais");
 
 
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Cenoura", 5.00, "KG", 1,3);
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Couve", 50, "MC", 15, 6);
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Maça", 100, "UN", 50, 2);
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Uva", 250, "CX", 20, 1);
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Alface", 100, "MC", 85, 5);
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Berinjela", 30, "UN", 10, 3);
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Melancia", 600, "KG", 250, 2);
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Salsinha", 50,"MC", 25, 5);
 
 
 SELECT * FROM tb_produtos WHERE valor > 50.00;
 
 
SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;


SELECT * FROM tb_produtos WHERE nome LIKE "%C%";


SELECT * FROM tb_produtos INNER JOIN tb_categorias WHERE tb_produtos.categoria = tb_categorias.id_categorias;


SELECT * FROM tb_produtos INNER JOIN tb_categorias WHERE tb_produtos.categoria = 2 AND tb_categorias.id_categorias =2;