-- tabela  livros para armazenar os dados sobre os livros
CREATE TABLE livros (
    id INTEGER PRIMARY KEY,
    titulo TEXT,
    autor TEXT,
    ano_publicacao INTEGER,
    preco REAL
);

-- registros de livros para teste
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('1984', 'George Orwell', 1949, 35.75);
 



 
