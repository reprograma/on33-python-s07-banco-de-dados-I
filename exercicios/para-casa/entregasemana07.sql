CREATE table livros (
  id INTEGER PRIMARY KEY,
  titulo TEXT,
  autor TEXT,
  ano_publicacao INTEGER,
  preco REAL
  );

INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES 
('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90),
('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50),
('1984', 'George Orwell', 1949, 35.75),
('O Alienista', 'Machado de Assis', 1882, 28.90),
('O Cortiço', 'Aluisio Azevedo', 1890, 34.60),
('Macunaíma', 'Mário de Andrade', 1928, 37.75),
('A hora da estrela', 'Clarice Lispector', 1977, 42.50);

CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
    livro_id INTEGER,
    quantidade INTEGER,
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

INSERT INTO estoque (livro_id, quantidade) VALUES (01, 12);
INSERT INTO estoque (livro_id, quantidade) VALUES (02, 11);
INSERT INTO estoque (livro_id, quantidade) VALUES (03, 09);
INSERT INTO estoque (livro_id, quantidade) VALUES (04, 07);
INSERT INTO estoque (livro_id, quantidade) VALUES (05, 05);
INSERT INTO estoque (livro_id, quantidade) VALUES (06, 15);

SELECT quantidade
FROM estoque
JOIN livros 
	ON livro_id = livros.id
WHERE livro_id = 02

UPDATE estoque 
SET quantidade = quantidade + 3
WHERE livro_id = 02; 

UPDATE estoque
SET quantidade = 20
WHERE livro_id = 02; 