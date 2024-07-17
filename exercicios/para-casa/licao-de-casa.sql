-- create table estoque

-- Obter a quantidade disponível em estoque para um determinado livro.

-- Adicionar unidades ao estoque de um livro específico.

CREATE TABLE Estoque (
  Id INTEGER PRIMARY KEY,
  Livro_Id INT,
  Quantidade INT
  );
INSERT INTO Estoque (Id, livro_id, quantidade) VALUES (1, 1, 25);
INSERT INTO Estoque (Id, livro_id, quantidade) VALUES (2, 2, 20);
INSERT INTO Estoque (Id, livro_id, quantidade) VALUES (3, 3, 35);

SELECT * FROM Estoque WHERE livro_id = 2

UPDATE Estoque SET quantidade = 3, livro_id = 2 WHERE Id = 2

