CREATE DATABASE db_academia;

USE db_academia;

CREATE TABLE tb_alunos(
matricula BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT NOT NULL,
plano VARCHAR(255) NOT NULL,
mensalidade DECIMAL(10,2) NOT NULL,
PRIMARY KEY (matricula)
);

INSERT INTO tb_alunos(nome, idade, plano, mensalidade) VALUES ("Carlos", 25, "Premium", 150.00);
INSERT INTO tb_alunos(nome, idade, plano, mensalidade) VALUES ("Fernanda", 32, "Gold", 180.00);
INSERT INTO tb_alunos(nome, idade, plano, mensalidade) VALUES ("Lucas", 21, "Basic", 90.00);
INSERT INTO tb_alunos(nome, idade, plano, mensalidade) VALUES ("Mariana", 28, "Premium", 150.00);
INSERT INTO tb_alunos(nome, idade, plano, mensalidade) VALUES ("Gabriel", 35, "Gold", 180.00);
INSERT INTO tb_alunos(nome, idade, plano, mensalidade) VALUES ("Patrícia", 40, "Basic", 90.00);
INSERT INTO tb_alunos(nome, idade, plano, mensalidade) VALUES ("João", 27, "Premium", 150.00);
INSERT INTO tb_alunos(nome, idade, plano, mensalidade) VALUES ("Beatriz", 23, "Gold", 180.00);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE mensalidade > 100;
SELECT * FROM tb_alunos WHERE mensalidade < 100;

UPDATE tb_alunos
SET mensalidade = 120.00
WHERE matricula = 5;

SELECT * FROM tb_alunos;
