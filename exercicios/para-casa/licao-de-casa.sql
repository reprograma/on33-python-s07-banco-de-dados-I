-- create table estoque
--NOTA ALUNA: apesar de opcional, trouxe livro_id como chave estrangeira conforme sugerido no exercício

CREATE TABLE estoque(
  id INTEGER PRIMARY KEY,
  livro_id INTEGER,
  quantidade INTEGER,
  FOREIGN KEY (livro_id) REFERENCES livros(id)
  );

-- Obter a quantidade disponível em estoque para um determinado livro.
--NOTA ALUNA: foi criada uma consulta que retorna uma na exibição o título do livro, a quantidade total daquele livro em estoque (somando todas as entradas), e quantas entradas no estoque  aquele livro teve

SELECT livros.titulo,
estoque.quantidade, COUNT(*) AS entradas_no_estoque
FROM estoque
JOIN livros ON livros.id = estoque.livro_id
WHERE livro_id = 2

-- Adicionar unidades ao estoque de um livro específico:

---Adicionar unidades(quantidade) ao estoque de um livro específico
UPDATE estoque SET quantidade = quantidade + 1, livro_id = 2 where id = 2

---Atualizar unidades(quantidade) do estoque de um livro específico
UPDATE estoque SET quantidade = 5, livro_id = 1 WHERE id = 1



