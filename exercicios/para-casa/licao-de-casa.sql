-- create table livros

CREATE TABLE livros (
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titulo TEXT,
    autor TEXT,
    ano_publicacao INTEGER,
    preco REAL
);

-- Inserir os registros de livros
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('1984', 'George Orwell', 1949, 35.75);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Encontro Marcado', 'Fernando Sabino', 1970, 58.45);

-- create table estoque
CREATE TABLE estoque (
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    livro_id INTEGER,
    quantidade INTEGER,
    FOREIGN KEY (livro_id) REFERENCES livros (id)
);

INSERT INTO estoque (livro_id, quantidade) VALUES (1, 40);
INSERT INTO estoque (livro_id, quantidade) VALUES (2, 20);
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 1);
INSERT INTO estoque (livro_id, quantidade) VALUES (4, 5);

-- Obter a quantidade disponível em estoque para um determinado livro.
SELECT * FROM estoque
WHERE livro_id = 2;

-- Adicionar unidades ao estoque de um livro específico.
UPDATE estoque SET quantidade = quantidade + 1 WHERE id = 4;
