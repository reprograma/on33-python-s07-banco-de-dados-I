-- 1)create table estoque
CREATE TABLE Estoque ( 
    id INTEGER PRIMARY KEY,  
    livros_id INTEGER,  
    quantidade INTEGER,  
    FOREIGN KEY (livros_id) REFERENCES livros(id)  
);

--Inserção de produtos na tabela Estoque

INSERT INTO Estoque (livros_id, quantidade) VALUES (1, 5);
INSERT INTO Estoque (livros_id, quantidade) VALUES (2, 2);
INSERT INTO Estoque (livros_id, quantidade) VALUES (3, 1);
INSERT INTO Estoque (livros_id, quantidade) VALUES (4, 3);
INSERT INTO Estoque (livros_id, quantidade) VALUES (5, 2);
INSERT INTO Estoque (livros_id, quantidade) VALUES (6, 1);

-- 2) Obter a quantidade disponível em estoque para um determinado livro.

--Selecionei a tabela que quer consultar e informar qual o código do livro que vai consultar
SELECT *
FROM Estoque
where livros_id = '3' --Informar qual Livro quer ver a quantidade

-- 3) Adicionar unidades ao estoque de um livro específico.
--Aqui eu inseri 10 unidades no Livro numero 2
UPDATE estoque SET quantidade = quantidade + 10, livros_id = 2 where id = 2