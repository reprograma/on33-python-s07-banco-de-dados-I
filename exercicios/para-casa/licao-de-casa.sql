-- create table estoque
CREATE TABLE Estoque (
  Id INTEGER PRIMARY KEY,
  Livro_Id INT,
  Quantidade INT
  );

INSERT INTO Estoque (Id, livro_id, quantidade) VALUES (1, 1, 800);
INSERT INTO Estoque (Id, livro_id, quantidade) VALUES (2, 2, 800);
INSERT INTO Estoque (Id, livro_id, quantidade) VALUES (3, 3, 300);


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
UPDATE Estoque SET Quantidade = 500 WHERE Id = 3;


