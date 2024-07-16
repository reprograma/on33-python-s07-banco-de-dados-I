CREATE TABLE livros (
    id INTEGER PRIMARY KEY,
    titulo TEXT,
    autor TEXT,
    ano_publicacao INTEGER,
    preco REAL
);


INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('1984', 'George Orwell', 1949, 35.75);

CREATE TABLE estoque (
  id INTEGER PRIMARY key,
  livro_id INTEGER,
  quantidade INTEGER,
  FOREIGN KEY (livro_id) REFERENCES livros(id)
  );
  
  INSERT into estoque(livro_id,quantidade) VALUES (1, 2);
  INSERT into estoque(livro_id,quantidade) VALUES (2, 3);
  INSERT into estoque(livro_id,quantidade) VALUES (3, 10);
  
  
  -- Obter a quantidade disponível em estoque para um determinado livro.

SELECT livros.id, livros.titulo, livros.autor, estoque.quantidade
FROM estoque
JOIN livros ON estoque.livro_id = livros.id
WHERE livros.autor = 'George Orwell';


-- Adicionar unidades(quantidade) ao estoque de um livro específico.
UPDATE estoque
SET quantidade = quantidade + 2
WHERE livro_id	= 2;

-- Atualizar unidades(quantidade) do estoque de um livro específico.
UPDATE estoque
SET quantidade = 12
WHERE livro_id = 1;

