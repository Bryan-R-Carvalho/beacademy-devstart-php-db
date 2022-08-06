CREATE DATABASE db_store;

USE db_store;

CREATE TABLE tb_category(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL
);

CREATE TABLE tb_product(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(1000) NOT NULL,
    photo VARCHAR(255) NOT NULL,
    price FLOAT(9,2) NOT NULL,
    quantity INT (5) NOT NULL,
    category_id INT (11) NOT NULL,
    created_at DATETIME NOT NULL
);


INSERT INTO tb_category(name, description) VALUES
("Aventura", "Jogos de ação e aventura"),
("FPS", "Jogos de tiro em primeira pessoa"),
("RPG", "Jogos em que o jogador controla as ações de um ou mais personagens imersos num mundo bem definido");


INSERT INTO tb_product(name, description, photo, price, quantity, category_id, created_at)
VALUES
("Ghost of Tsushima", "No final do século xiii, o império mongol destruiu nações inteiras em sua campanha para conquistar o oriente...", "https://upload.wikimedia.org/wikipedia/pt/d/dc/Ghost_of_Tsushima_capa.png", 198.9, 15, 1, now()),
("Call Of Duty Modern Warfare", "Os eventos do jogo ocorrem num cenário realista e moderno. Pela primeira vez na história da série, Call of Duty: Modern Warfare suporta multijogador em cross-platform.", "https://upload.wikimedia.org/wikipedia/pt/e/e9/CallofDutyModernWarfare%282019%29.jpg", 154.80, 10, 2, now()),
("The Elder Scrolls V: Skyrim", "Os acontecimentos do jogo passam-se duzentos anos depois da, já quase esquecida, crise de Oblivion, no ano 201 da quarta era (4E 201) na província de Skyrim.", "https://upload.wikimedia.org/wikipedia/pt/a/aa/The_Elder_Scrolls_5_Skyrim_capa.png", 82.30, 20, 3, now()),


SELECT prod.id, prod.name, prod.description, prod.quantity, cat.name as category FROM tb_product prod INNER JOIN tb_category cat ON prod.category_id = cat.id;


ALTER TABLE tb_users MODIFY COLUMN password varchar(255) NOT NULL;


DESCRIBE tb_users;


DROP TABLE tb_users;