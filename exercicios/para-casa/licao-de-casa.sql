CREATE TABLE estoque (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro_id INT,
    quantidade INT,
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

INSERT INTO estoque (livro_id, quantidade) VALUES (1, 10);
INSERT INTO estoque (livro_id, quantidade) VALUES (2, 5);
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 20);

UPDATE estoque
SET quantidade = 25
WHERE livro_id = 1;

-- Criação da Tabela 'estoque'
CREATE TABLE IF NOT EXISTS estoque (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro_id INT,
    quantidade INT,
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

-- Inserção de Registros de Teste
INSERT INTO estoque (livro_id, quantidade) VALUES (1, 10);
INSERT INTO estoque (livro_id, quantidade) VALUES (2, 5);
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 20);

-- Atualiza a Quantidade Definindo um Novo Valor
UPDATE estoque
SET quantidade = 25 -- Novo valor de quantidade
WHERE livro_id = 1; -- ID do livro para atualizar

