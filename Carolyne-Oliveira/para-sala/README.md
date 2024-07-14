
### 📖 Exercício 1: Criar uma Tabela
Crie uma tabela chamada `alunos` com as seguintes colunas:
- `id` (inteiro, chave primária)
- `nome` (texto)
- `idade` (inteiro)

                CREATE TABLE alunos (
            id INTEGER PRIMARY KEY,
            nome TEXT,
            idade INTEGER
        );

### 📖 Exercício 2: Inserir Dados
Insira três registros na tabela `alunos` com os seguintes dados:

            INSERT INTO alunos (nome, idade) VALUES ('Henrique', 34);
            INSERT INTO alunos (nome, idade) VALUES ('Carolyne', 32);
            INSERT INTO alunos (nome, idade) VALUES ('Camila', 31);

### 📖 Exercício 3: Selecionar Dados
Selecione todos os registros da tabela `alunos` e exiba o resultado.

            SELECT * FROM alunos

### 📖 Exercício 4: Atualizar Dados
Atualize a idade do aluno com `id` igual a 2 para 23 anos.

            UPDATE alunos SET idade = 23 WHERE id = 2;

### 📖 Exercício 5: Excluir Dados
Exclua o aluno com `id` igual a 3 da tabela `alunos`.

            DELETE FROM alunos WHERE id = 1;
            DELETE FROM alunos WHERE id = 2;
            DELETE FROM alunos WHERE id = 3;

### 📖 Exercício 6: Problema da Loja de Livros

Suponha que você esteja gerenciando uma loja de livros online e precise criar um banco de dados para armazenar informações sobre os livros disponíveis. Você foi encarregado de projetar o esquema do banco de dados e realizar algumas consultas básicas.

            -- Criar a tabela 'livros'
            CREATE TABLE livros (
                id INTEGER PRIMARY KEY,
                titulo TEXT,
                autor TEXT,
                ano_publicacao INTEGER,
                preco REAL
            );

            -- Inserir os registros de livros
            INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90);
            INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50);
            INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('1984', 'George Orwell', 1949, 35.75);

            -- Selecione todos os livros da tabela.
            SELECT * FROM livros

            -- Selecione o título e o autor de todos os livros publicados após o ano de 2010.
            SELECT titulo, autor from livros where ano_publicacao > 2010

            -- Selecione o título, autor e preço dos livros com preço superior a R$ 30,00.     
            SELECT titulo, autor, preco FROM livros WHERE preco > 30

### 📖 Exercício 8: Gerenciamento de Vendas de Livros

Suponha que você esteja expandindo sua loja de livros online e agora precisa acompanhar as vendas dos livros. Você deve criar uma tabela para armazenar informações sobre as vendas dos livros e depois realizar uma consulta para obter informações sobre os livros vendidos.

            -- Criar a tabela 'vendas'
            CREATE TABLE vendas (
                id INTEGER PRIMARY KEY,
                livro_id INTEGER,
                data_venda DATE,
                quantidade INTEGER,
                FOREIGN KEY (livro_id) REFERENCES livros(id)
            );

            -- Inserir alguns registros de vendas para teste
            INSERT INTO vendas (livro_id, data_venda, quantidade) VALUES (1, '2024-05-10', 3);  -- Venda de 3 exemplares de 'Dom Quixote'
            INSERT INTO vendas (livro_id, data_venda, quantidade) VALUES (2, '2024-05-09', 5);  -- Venda de 5 exemplares de 'Orgulho e Preconceito'
            INSERT INTO vendas (livro_id, data_venda, quantidade) VALUES (3, '2024-05-08', 2);  -- Venda de 2 exemplares de '1984'

            -- Realizar JOIN entre as tabelas 'livros' e 'vendas'
            SELECT 
                livros.titulo, 
                livros.autor, 
                vendas.data_venda, 
                vendas.quantidade
            FROM 
                vendas
            JOIN 
                livros ON vendas.livro_id = livros.id;

### 📖 Exercício 9: Sistema de Votação Online para Melhores Livros do Ano

Imagine que você está desenvolvendo um sistema de votação online para uma competição de melhores livros do ano. Você precisa criar uma tabela para armazenar os votos dos usuários e depois escrever consultas SQL para realizar operações básicas de contagem de votos e análise dos resultados.

                -- Criar a tabela 'votos'
                CREATE TABLE votos (
                    id INTEGER PRIMARY KEY,
                    id_usuario INTEGER,
                    id_livro INTEGER,
                    data_voto DATETIME
                );

                -- Inserir alguns registros de exemplo na tabela 'votos'
                INSERT INTO votos (id_usuario, id_livro, data_voto) VALUES (1, 1, '2024-05-10 08:30:00');  -- Voto do usuário 1 para o livro 1
                INSERT INTO votos (id_usuario, id_livro, data_voto) VALUES (2, 2, '2024-05-10 09:45:00');  -- Voto do usuário 2 para o livro 2
                INSERT INTO votos (id_usuario, id_livro, data_voto) VALUES (1, 3, '2024-05-10 10:15:00');  -- Voto do usuário 1 para o livro 3

                -- Contar o número total de votos recebidos por cada livro.
                SELECT id_livro,
                count(*) AS votos_recebido
                FROM votos
                GROUP BY id_livro;

                -- Identificar os livros mais votados.
                SELECT id_livro,
                count(*) AS mais_votados
                FROM votos
                GROUP BY id_livro
                ORDER BY mais_votados DESC;

                -- Verificar se um determinado usuário já votou em um determinado livro.
                SELECT id_livro
                FROM votos
                where id_usuario = 1;

                -- Obter a lista de livros votados por um usuário específico.
                SELECT votos.id_usuario, livros.titulo
                from votos
                join livros ON livros.id = votos.id_livro
                WHERE id_usuario = 1;

### 📖 Exercício 10

Este exercício e uma previa do exercício de casa:

                DROP TABLE votos_estoque -- Para deletar a tabela

                -- Criar a tabela 'votos'
                CREATE TABLE votos_estoque (
                    id INTEGER PRIMARY KEY,
                    id_usuario INTEGER,
                    id_livro INTEGER,
                    estoque INTEGER
                )

                -- Inserir alguns registros de exemplo na tabela 'votos'
                INSERT INTO votos_estoque (id_usuario, id_livro, estoque) VALUES (1, 1, 40);
                INSERT INTO votos_estoque (id_usuario, id_livro, estoque) VALUES (2, 2, 20);  
                INSERT INTO votos_estoque (id_usuario, id_livro, estoque) VALUES (1, 3, 1);  

                -- Consulta por ordem
                SELECT *
                FROM votos_estoque
                ORDER BY estoque;

                -- Incremento usando SET na coluna estoque
                UPDATE votos_estoque
                SET estoque = estoque + 1
                WHERE id = 1; -- Supondo que você deseja incrementar o estoque do voto com ID 1

                -- Consulta após o incremento
                SELECT *votos_estoque
                FROM votos_estoque;
