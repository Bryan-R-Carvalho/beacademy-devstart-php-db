--Criar um banco de dos--
CREATE DATABASE db_escola;

--selecionar o banco de dados--
USE db_escola;

---Excluir tabela--
DROP TABLE tb_professor;

--Criar tabela--
CREATE TABLE tb_professor (
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
cpf CHAR(11) UNIQUE NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE tb_aluno (
nome VARCHAR(100) NOT NULL,
cpf CHAR(11) NOT NULL,
email VARCHAR(255) NOT NULL,
matricula VARCHAR(10) NOT NULL
);

--inserir dados--
INSERT INTO tb_professor (nome, email, cpf)
VALUES (
  "Bryan","enail@email.com","111111111"
);

  INSERT INTO tb_professor (nome, email, cpf)
VALUES (
  "Joao","joaomail@email.com","222222222"
);

    INSERT INTO tb_professor (nome, email, cpf)
VALUES (
  "Maria","mariaemail@email.com","333333333"
);

  --Selecionar os dados--
  SELECT * FROM tb_professor;