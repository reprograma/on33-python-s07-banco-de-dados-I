-- create table estoque

            CREATE TABLE estoque (
                id INTEGER PRIMARY KEY,
                id_livro INTEGER,
                estoque INTEGER
            );
            INSERT INTO estoque (id_livro, estoque) VALUES (1, 40);
            INSERT INTO estoque (id_livro, estoque) VALUES (2, 20);
            INSERT INTO estoque (id_livro, estoque) VALUES (3, 1);
            INSERT INTO estoque (id_livro, estoque) VALUES (4, 32);
            INSERT INTO estoque (id_livro, estoque) VALUES (5, 15); 
            INSERT INTO estoque (id_livro, estoque) VALUES (6, 22); 

-- Obter a quantidade disponível em estoque para um determinado livro.

            SELECT *
            from estoque
            WHERE id_livro = 4; 

-- Adicionar unidades ao estoque de um livro específico.

            UPDATE estoque 
            SET estoque = 33 
            WHERE id = 3;  

## Ou	

            UPDATE estoque 
            SET estoque = +1, id_livro = 2 
            WHERE id = 2; 
