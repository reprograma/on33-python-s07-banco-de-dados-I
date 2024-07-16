-- create table estoque

CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
  	livro_id INTEGER,
    quantidade INTEGER,
  	FOREIGN KEY (livro_id) REFERENCES livros(id)
);

INSERT INTO estoque (livro_id, quantidade) VALUES (1, 6);
INSert INTO estoque (livro_id, quantidade) Values (2, 3);
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 15);

-- Obter a quantidade disponível em estoque para um determinado livro.

SELECT * FROM estoque

--OR

SELECT id, quantidade FROM estoque Where livro_id = 3

-- Adicionar unidades ao estoque de um livro específico.

UPDATE estoque SET quantidade = quantidade + 3 where livro_id = 1

--OR

UPDATE estoque SET quantidade = 30 WHERE livro_id = 3

