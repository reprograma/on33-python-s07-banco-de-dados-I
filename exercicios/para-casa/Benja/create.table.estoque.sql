-- tabela estoque para armazenar informações sobre o estoque de livros
CREATE TABLE estoque (
	id INTEGER, -- Identificador único para cada registro de estoque(inteiro, chave primária)
  	livro_id INTEGER, --Identificador do livro (chave estrangeira referenciando a tabela livros)
  	quantidade INTEGER, -- quantidade disponível em estoque (inteiro)
  	FOREIGN KEY (livro_id) REFERENCES livros (id) -- chave estrangeira que cria um vínculo entre os dados em duas tabelas. A chave estrangeira na tabela estoque referencia a chave primária na tabela livros.
);
 
 -- registros de estoque para teste
INSERT INTO estoque (livro_id, quantidade) VALUES (1, 10);  
INSERT INTO estoque (livro_id, quantidade) VALUES (2, 15);  
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 5);   
