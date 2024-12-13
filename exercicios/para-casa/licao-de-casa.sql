-- create table estoque
CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
    livro_id INT,
    quantidade INT
);

INSERT INTO estoque (id, livro_id, quantidade)
VALUES
    (1, 1, 20);

INSERT INTO estoque (id, livro_id, quantidade)
VALUES
    (2, 2, 10);
    
INSERT INTO estoque (id, livro_id, quantidade)
VALUES
    (3, 3, 15);  




-- Obter a quantidade disponível em estoque para um determinado livro.

SELECT quantidade
FROM estoque
WHERE livro_id = 2; 


-- Adicionar unidades ao estoque de um livro específico.

UPDATE estoque
SET quantidade = quantidade + 4  -- Adiciona 4 unidades ao estoque existente
WHERE livro_id = 2;


SELECT *
FROM estoque;


