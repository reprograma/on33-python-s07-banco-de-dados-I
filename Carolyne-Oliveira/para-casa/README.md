# 🏦🎲📊📉📈 Banco de Dados

## 📚 Descrição da Atividade

Exercicio da semana 07 para casa. Imagine que você está desenvolvendo um sistema de gerenciamento de estoque para uma livraria online. Você precisa criar uma tabela para armazenar informações sobre o estoque de livros disponíveis e depois escrever consultas SQL para realizar operações básicas de gerenciamento de estoque.

## 📋 Passo a Passo

## Criar uma tabela chamada estoque.

            CREATE TABLE estoque (
                id INTEGER PRIMARY KEY,
                id_livro INTEGER,
                estoque INTEGER
            );

## Inserir alguns registros de exemplo na tabela 'estoque'.

            INSERT INTO estoque (id_livro, estoque) VALUES (1, 40);
            INSERT INTO estoque (id_livro, estoque) VALUES (2, 20);
            INSERT INTO estoque (id_livro, estoque) VALUES (3, 1);
            INSERT INTO estoque (id_livro, estoque) VALUES (4, 32);
            INSERT INTO estoque (id_livro, estoque) VALUES (5, 15); 
            INSERT INTO estoque (id_livro, estoque) VALUES (6, 22); 

## Escrever consultas SQL para as operações especificadas:

## Obter a quantidade disponível em estoque para um determinado livro.

            SELECT *
            from estoque
            WHERE id_livro = 4; 

## Adicionar unidades ao estoque de um livro específico.

            UPDATE estoque 
            SET estoque = 33 
            WHERE id = 3;  

## Ou:

            UPDATE estoque 
            SET estoque = +1, id_livro = 2 
            WHERE id = 2;       

## Consulta após o incremento

            SELECT *
            from estoque;

## Obter a lista de livros com estoque.

            SELECT livros.titulo, estoque.estoque
            from estoque
            join livros ON livros.id = estoque.id

## Obter a lista de livros com estoque por um usuário específico.

            SELECT livros.titulo, estoque.estoque
            from estoque
            join livros ON livros.id = estoque.id
            WHERE id_livro = 2;

## 👩🏻‍🏫 Profa. Leticia!
Professora [Leticia](https://davinyleticia.bio/)

## 🔚