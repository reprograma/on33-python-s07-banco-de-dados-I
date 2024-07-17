CREATE TABLE livros (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255),
    autor VARCHAR(100),
    ano_publicacao INTEGER
);

CREATE TABLE estoque (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    livro_id INTEGER,
    quantidade INTEGER,
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

ALTER TABLE livros ADD genero VARCHAR(50);

INSERT INTO livros (nome, genero, autor, ano_publicacao) VALUES 
('Einstein: His Life and Universe', 'biografia', 'Walter Isaacson', 2007),
('Madame Curie: A Biography', 'biografia', 'Eve Curie', 1937),
('Ada s Algorithm: How Lord Byron s Daughter Ada Lovelace Launched the Digital Age', 'biografia', 'James Essinger', 2014),
('Aristotle: A Biography', 'biografia', 'Robert W. Sharples', 1994),
('The Hemlock Cup: Socrates, Athens and the Search for the Good Life', 'biografia', 'Bettany Hughes', 2010),
('Stephen Hawking: A Biography', 'biografia', 'Kristine Larsen', 2005),
('Reaching for the Moon: The Autobiography of NASA Mathematician Katherine Johnson', 'biografia', 'Katherine Johnson', 2019),
('Hidden Figures: The American Dream and the Untold Story of the Black Women Who Helped Win the Space Race', 'biografia', 'Margot Lee Shetterly', 2016),
('Rosalind Franklin: The Dark Lady of DNA', 'biografia', 'Brenda Maddox', 2002),
('Grace Hopper and the Invention of the Information Age', 'biografia', 'Kurt W. Beyer', 2009);

INSERT INTO estoque (livro_id, quantidade) VALUES
(1, 25),
(2, 48),
(3, 89),
(4, 100),
(5, 70),
(6, 57),
(7, 150),
(8, 45),
(9, 180),
(10, 96);

-- Obter a quantidade disponível em estoque para um determinado livro.
SELECT livros.nome, estoque.quantidade
FROM estoque
INNER JOIN livros ON estoque.livro_id = livros.id
WHERE livro_id = 1;

-- Adicionar unidades ao estoque de um livro específico.
UPDATE estoque
SET quantidade = quantidade + 10
WHERE livro_id = 1;