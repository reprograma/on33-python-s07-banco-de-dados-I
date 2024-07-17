-- create table estoque
CREATE TABLE estoque (
    id INT PRIMARY KEY,
    livro_id INT,
    quantidade INT,
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);
-- Obter a quantidade disponível em estoque para um determinado livro.
INSERT INTO estoque (livro_id, quantidade) VALUES (1, 50);
INSERT INTO estoque (livro_id, quantidade) VALUES (2, 30);
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 20);
INSERT INTO estoque (livro_id, quantidade) VALUES (4, 10);
INSERT INTO estoque (livro_id, quantidade) VALUES (5, 15);
INSERT INTO estoque (livro_id, quantidade) VALUES (6, 25);
INSERT INTO estoque (livro_id, quantidade) VALUES (7, 40);
INSERT INTO estoque (livro_id, quantidade) VALUES (8, 35);
INSERT INTO estoque (livro_id, quantidade) VALUES (9, 45);
INSERT INTO estoque (livro_id, quantidade) VALUES (10, 5);

-- Adicionar unidades ao estoque de um livro específico.
SELECT quantidade FROM estoque WHERE livro_id = 1;

UPDATE estoque SET quantidade = quantidade + 10 WHERE livro_id = 1;

UPDATE estoque SET quantidade = 100 WHERE livro_id = 1;
