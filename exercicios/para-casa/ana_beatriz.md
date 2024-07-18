CREATE TABLE estoque(
id INTEGER PRIMARY KEY,
livro_id INTEGER,
quantidade INTEGER);



INSERT INTO estoque (livro_id, quantidade) VALUES (1, 3);  
INSERT INTO estoque (livro_id, quantidade) VALUES (2, 5);  
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 2);


SELECT quantidade From estoque WHERE livro_id = 2;

UPDATE estoque SET quantidade = quantidade + 3 WHERE livro_id = 3;

UPDATE estoque SET quantidade = 5 WHERE livro_id = 1;