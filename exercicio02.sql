
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	ID_CATEGORIAS BIGINT AUTO_INCREMENT PRIMARY KEY,
    CATEGORIA VARCHAR(50),
    TAMANHO INT
);


 CREATE TABLE tb_pizzas(
	ID_PIZZA BIGINT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(50),
    VALOR DECIMAL(9,2),
    BORDA VARCHAR(50),
    DESCRICAO VARCHAR (100),
    ADICIONAL VARCHAR(100),
    CATEGORIA BIGINT,
    FOREIGN KEY (CATEGORIA) REFERENCES tb_categorias(ID_CATEGORIAS)
);

INSERT INTO tb_categorias(CATEGORIA, TAMANHO) VALUES ("Broto", 4);
INSERT INTO tb_categorias(CATEGORIA, TAMANHO) VALUES ("Esfiha", 1);
INSERT INTO tb_categorias(CATEGORIA, TAMANHO) VALUES ("Beirute", 4);
INSERT INTO tb_categorias(CATEGORIA, TAMANHO) VALUES ("Calzone", 2);
INSERT INTO tb_categorias(CATEGORIA, TAMANHO) VALUES ("Pizza Grande", 8);


INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Calabresa", 45.00, "Recheada com Catupiry", "Calabresa com cebola, azeitonas e molho de tomate", "Sem adicional", 5);
INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Mussarela", 55.00, "Comum", "Mussarela, azeitonas e catupiry", "Sem adicional", 4);
INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Baiana", 25.00, "Recheada com Cheddar", "Mussarela, azeitonas, milho, presunto, catupiry e pimenta", "Sem adicional", 1);
INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Frango com Catupiry", 65.00, "Recheada com Catupiry", "Frango, catupiry e azeitonas", "Adicionar Catupiry", 2);
INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Nuttela com banana", 50.00, "Recheada com Nutella", "Nutella e banana", "Adicionar morango", 4);
INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Vegana", 35.00, "Comum", "Alface, milho, ervilha, tomates, brocólis e cebola", "Adicionar aspargos", 3);
INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Portuguesa", 75.00, "Recheada com Cheddar", "Presunto, mussarela, ovo, ervilha, milho, cebola e catupiry", "Adicionar azeitonas", 5);
INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Camarao", 120.00, "Recheada com Catupiry", "Camarão, mussarela, cebola e azeitona", "Sem adicional", 5);


SELECT * FROM tb_pizzas WHERE VALOR > 45.00;

SELECT * FROM tb_pizzas WHERE VALOR BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE NOME LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias WHERE tb_pizzas.CATEGORIA = tb_categorias.ID_CATEGORIAS;


SELECT * FROM tb_pizzas INNER JOIN tb_categorias WHERE tb_pizzas.CATEGORIA = 5 AND tb_categorias.ID_CATEGORIAS = 5;
