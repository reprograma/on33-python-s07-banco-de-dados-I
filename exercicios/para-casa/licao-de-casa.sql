-- create table estoque

CREATE TABLE estoque (id INTEGER PRIMARY KEY,
                      quantidade integer,
                      livro_id INTEGER,
                      CONSTRAINT fk_livro_id FOREIGN key (id) REFERENCES livros (id)
  );

-- Obter a quantidade disponível em estoque para um determinado livro.

select 	    l.id,
		        l.nome_livro,
            e.quantidade
from 	      livros l
inner JOIN	estoque e
ON		      l.id = e.livro_id
WHERE 	    l.id = 3

-- Adicionar unidades ao estoque de um livro específico.

update estoque set quantidade = 336 where id = 30
