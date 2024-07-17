--Cria-se a tabela Estoque com os campos definidos.
CREATE TABLE Estoque ( 
    id INTEGER PRIMARY KEY,  
    livros_id INTEGER,  
    quantidade INTEGER,  
    FOREIGN KEY (livros_id) REFERENCES livros(id)  
);

--inserção dos dados em bloco, agrupando várias inserções para melhor desempenho.
INSERT INTO Estoque (livros_id, quantidade) VALUES 
(1, 50),
(2, 30),
(3, 20);

-- Obter a quantidade disponível em estoque para um determinado livro.
SELECT * FROM Estoque where livros_id = '1'


-- Adicionar unidades ao estoque de um livro específico.
UPDATE estoque SET quantidade = quantidade + 10, livros_id = 2 where id = 2


