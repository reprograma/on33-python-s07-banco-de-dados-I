-- TABLE
CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
    id_livro INTEGER,
    estoque INTEGER
  );
CREATE TABLE livros (
    id INTEGER PRIMARY KEY,
    titulo TEXT,
    autor TEXT,
    ano_publicacao INTEGER,
    preco REAL
);
CREATE TABLE vendas (
    id INTEGER PRIMARY KEY,
    livro_id INTEGER,
    data_venda DATE,
    quantidade INTEGER,
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
