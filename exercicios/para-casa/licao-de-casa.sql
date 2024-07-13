-- create table estoque
CREATE TABLE estoque (
     id INTEGER PRIMARY KEY,
     livro_id INTEGER,
     quantidade INTEGER
  );
-- Inserir estoque
INSERT INTO estoque (livro_id, quantidade) VALUES (01, 12);
INSERT INTO estoque (livro_id, quantidade) VALUES (02, 11);
INSERT INTO estoque (livro_id, quantidade) VALUES (03, 09);
INSERT INTO estoque (livro_id, quantidade) VALUES (04, 07);
INSERT INTO estoque (livro_id, quantidade) VALUES (05, 05);
INSERT INTO estoque (livro_id, quantidade) VALUES (06, 15);

-- Obter a quantidade disponível em estoque para um determinado livro.
SELECT * FROM estoque 
WHERE livro_id = 02


-- Adicionar unidades ao estoque de um livro específico.
UPDATE estoque SET quantidade = 20, livro_id = 02 WHERE id = 2


