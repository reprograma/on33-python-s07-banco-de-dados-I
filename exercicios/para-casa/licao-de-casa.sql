-- Criação da tabela Livros (primária)
CREATE table livros (
  id INTEGER PRIMARY KEY,
  titulo TEXT,
  autor TEXT,
  ano_publicacao INTEGER,
  preco REAL
  );
 
-- Inserções no banco de dados tabela Livros
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES 
('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90),
('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50),
('1984', 'George Orwell', 1949, 35.75),
('O Alienista', 'Machado de Assis', 1882, 28.90),
('O Cortiço', 'Aluisio Azevedo', 1890, 34.60),
('Macunaíma', 'Mário de Andrade', 1928, 37.75),
('A hora da estrela', 'Clarice Lispector', 1977, 42.50);

-- Criação da tabela 'estoque'
CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
    livro_id INTEGER, --Identificador do livro (chave estrangeira referenciando a tabela `livros`)
    quantidade INTEGER,
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

-- Inserções no banco de dados da tabela estoque
INSERT INTO estoque (livro_id, quantidade) VALUES (1, 13),
(5, 16),
(4, 6),
(7, 8),
(6, 11),
(3, 15),
(2, 22);

select * from estoque

-- 1) Obter a quantidade disponível em estoque para um determinado livro.
SELECT livro_id, livros.titulo, estoque.quantidade  --seleciona 
FROM estoque --de onde
JOIN livros ON estoque.livro_id = livros.id
order by livro_id asc; --referencia tabelas relacionadas

-- 2) Adicionar unidades(quantidade) ao estoque de um livro específico.
UPDATE estoque --modifica um dado da tabela
SET quantidade = quantidade + 2 -- o que quero modificar (soma)
WHERE livro_id = 4; -- critério

-- 3) Atualizar unidades(quantidade) do estoque de um livro específico.
UPDATE estoque --modifica um dado da tabela
SET quantidade = 2 -- o que quero modificar (substitui a informação)
WHERE livro_id = 2; -- critério