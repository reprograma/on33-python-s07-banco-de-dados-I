-- create table estoque

CREATE table estoque (
  id INTEGER PRIMARY KEY,
  livro_id INTEGER,
  quantidade INTEGER,
  FOREIGN KEY (livro_id) REFERENCES livros(id)
  );

INSERT into estoque (livro_id, quantidade) VALUES (1, 2);
INSERT INTO estoque (livro_id, quantidade) VALUES (1, 10); 
INSERT INTO estoque (livro_id, quantidade) VALUES (2, 5);  
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 8);
    
  /*
 Isso significa que estamos criando uma conexão entre a tabela estoque e a tabela livros. Basicamente, 
 estamos dizendo que o valor na coluna livro_id da tabela estoque deve ser um valor que já existe na coluna id da tabela livros.
se a tabela livros tem um livro com id 1, então a tabela estoque pode ter um registro onde livro_id é 1. 
Se a tabela livros não tem um livro com id 1, você não pode ter livro_id 1 na tabela estoque.
  */



-- Obter a quantidade disponível em estoque para um determinado livro.
SELECT quantidade 
FROM estoque
where livro_id = 1; -- escolhe o livro que quer nesse caso e 1




-- Adicionar unidades ao estoque de um livro específico.
UPDATE estoque 
set quantidade = quantidade + 2  -- adiciona mais 2 ao estoque
where livro_id = 1;  -- substituir 


-- Atualizar unidades(quantidade) do estoque de um livro específico.
UPDATE estoque
SET quantidade = quantidade - 15 -- Define a nova quantidade como 15
WHERE livro_id = 1; -- Substitua 1 pelo ID do livro e 15 pela nova quantidade
