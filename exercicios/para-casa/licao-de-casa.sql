-- create table estoque
create table estoque(
  id INTEGER PRIMARY KEY,
  livros_id INT,
  quantidade INT,
   FOREIGN KEY (livros_id) REFERENCES livros(id)
);
 INSERT INTO estoque (livros_id, quantidade) VALUES (1, 5);
 INSERT INTO estoque (livros_id, quantidade) VALUES (2, 8);
 INSERT INTO estoque (livros_id, quantidade) VALUES (3, 3);

-- Obter a quantidade disponível em estoque para um determinado livro.

SELECT * FROM estoque
WHERE livros_id = 2


-- Adicionar unidades ao estoque de um livro específico.
UPDATE estoque SET quantidade = 10 WHERE id = 2
SELECT * FROM estoque

