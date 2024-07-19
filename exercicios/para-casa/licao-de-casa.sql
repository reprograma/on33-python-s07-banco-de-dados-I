-- create table estoque
CREATE TABLE estoque (
     id INTEGER PRIMARY KEY,
     id_livro INTEGER,
     estoque INTEGER
   );


-- Obter a quantidade disponível em estoque para um determinado livro.
select * from estoque where id_livro = 2



-- Adicionar unidades ao estoque de um livro específico.

update estoque SET estoque = estoque + 10 where id_livro = 1

