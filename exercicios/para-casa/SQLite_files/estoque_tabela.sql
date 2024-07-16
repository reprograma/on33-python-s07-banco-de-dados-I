-- TABLE
CREATE TABLE cliente (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    idade INTEGER
, cpf varchar(11));
CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
  	livro_id INTEGER,
    quantidade INTEGER,
  	FOREIGN KEY (livro_id) REFERENCES livros(id)
);
CREATE TABLE "LatinAmericaCapitals" (id_capitals INT, Capital VARCHAR(50), CapitalPopulation INT, CapitalArea INT);
CREATE TABLE LatinAmericaCountries (
    id_countries INT,
    Country VARCHAR(50),
    Population INT,
    Area INT
);
CREATE TABLE livros (
    id INTEGER PRIMARY KEY,
    titulo TEXT,
    autor TEXT,
    ano_publicacao INTEGER,
    preco REAL
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
