-- create table estoque
CREATE TABLE estoque (
    id integer PRIMARY KEY,
    livros_id integer,
    quantidade integer,
    FOREIGN KEY (livros_id) REFERENCES livros(id)
);

--Inserir os livros na tabela
insert into estoque (livros_id, quantidade) values (1, 6);
insert into estoque (livros_id, quantidade) values (2, 2);
insert into estoque (livros_id, quantidade) values (3, 9);
insert into estoque (livros_id, quantidade) values (4, 4);

-- Obter a quantidade disponível em estoque para um determinado livro.
SELECT * FROM estoque
where livros_id = 4


-- Adicionar unidades ao estoque de um livro específico.
UPDATE estoque SET quantidade = quantidade + 1, livro_id = 2 where id = 2


