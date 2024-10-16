CREATE TABLE estoque (
  id INTEGER PRIMARY key,
  livros_id INT,
  quantidade INT,
	FOREIGN KEY (livros_id) REFERENCES livros(id)
); 
  
INSERT INTO estoque (livros_id, quantidade) VALUES (1, 5);
INSERT INTO estoque (livros_id, quantidade) VALUES (2, 4);
INSERT INTO estoque (livros_id, quantidade) VALUES (3, 9);

UPDATE estoque SET quantidade = 9, livros_id = 2 WHERE id = 2

SELECT * FROM estoque 
WHERE livros_id = 3