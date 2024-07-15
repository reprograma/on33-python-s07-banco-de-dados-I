-- create table estoque

CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
    livro_id INTEGER,
    quantidade INTEGER,
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

-- Obter a quantidade disponível em estoque para um determinado livro.

SELECT quantidade
FROM estoque
WHERE livro_id = 5;


-- Adicionar unidades ao estoque de um livro específico.

UPDATE estoque
SET quantidade = quantidade + 4
WHERE livro_id = 5;

-- Atualizar unidades ao estoque de um livro específico.

UPDATE estoque
SET quantidade = 10
WHERE livro_id = 5;