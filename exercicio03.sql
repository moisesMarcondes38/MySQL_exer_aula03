CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id_categorias BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(50),
	tipo_uso varchar(50)
);


 CREATE TABLE tb_produtos(
	id_produtos BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    un_medida CHAR(4),
    valor DECIMAL(9,2),
    empresa VARCHAR(50),
    quantidade DOUBLE,
    categoria BIGINT,
    FOREIGN KEY (categoria) REFERENCES tb_categorias(id_categorias)
);


INSERT INTO tb_categorias(categoria, tipo_uso) VALUES ("Cosmético", "Adulto");
INSERT INTO tb_categorias(categoria, tipo_uso) VALUES ("Remédio", "Adulto");
INSERT INTO tb_categorias(categoria, tipo_uso) VALUES ("Cosmético", "Infantil");
INSERT INTO tb_categorias(categoria, tipo_uso) VALUES ("Remédio", "Infantil");
INSERT INTO tb_categorias(categoria, tipo_uso) VALUES ("Alimento", "Todos os públicos");


INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Dipirona", "mg", 2.00, "EMS", 500.00, 2);
INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Protetor Solar", "g", 90.00, "La Roche-Posay", 50.00, 1);
INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Shampoo", "ml", 25.00, "Johnson's Baby", 400, 3);
INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Pomada", "g", 17.00, "Babymed", 45, 4);
INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Bala de gelatina", "g", 4.84, "Fini", 18, 5);
INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Pastilha Vitamina C", "un", 20.00, "Kley Hertz", 30, 5);
INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Analgésico", "un", 6.25, "Dorflex", 10, 2);
INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Suplemento de Ferro", "ml", 40.00, "Biotônico Fontoura", 400, 4);


SELECT * FROM tb_produtos WHERE valor > 50.00;


SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;


SELECT * FROM tb_produtos WHERE nome LIKE "%C%";


SELECT * FROM tb_produtos INNER JOIN tb_categorias WHERE tb_produtos.categoria = tb_categorias.id_categorias;


SELECT * FROM tb_produtos INNER JOIN tb_categorias WHERE tb_produtos.categoria= 1 AND tb_categorias.id_categorias = 1;
