-- create table estoque
CREATE TABLE Estoque (
  Id INTEGER PRIMARY KEY,
  Livro_Id INT,
  Quantidade INT
  );
  
INSERT INTO Estoque (Id, livro_id, quantidade) VALUES (1, 1, 25);
INSERT INTO Estoque (Id, livro_id, quantidade) VALUES (2, 2, 20);
INSERT INTO Estoque (Id, livro_id, quantidade) VALUES (3, 3, 35);

-- Obter a quantidade disponível em estoque para um determinado livro.
SELECT 
    Quantidade
FROM 
    Estoque
JOIN livros 
    ON livro_id = livros.id
WHERE
    livro_id = 1

-- Adicionar unidades ao estoque de um livro específico.
UPDATE Estoque SET Quantidade = 15 WHERE Id = 2;