-- create table estoque

-- Obter a quantidade disponível em estoque para um determinado livro.

-- Adicionar unidades ao estoque de um livro específico.

CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
  	livros_id INTEGER,
  	quantidade INTEGER,
  	FOREIGN KEY (livros_id) REFERENCES (livros_id)
);

INSERT INTO estoque (livros_id, quantidade) VALUES (1, 5);
INSERT INTO estoque (livros_id, quantidade) VALUES (2, 10);
INSERT INTO estoque (livros_id, quantidade) VALUES (3, 12);

SELECT * from estoque
WHERE livros_id = 2

