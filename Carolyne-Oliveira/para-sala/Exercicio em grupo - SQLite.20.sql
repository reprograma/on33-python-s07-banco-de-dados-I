-- Criar uma tabale cardapio e inserir comidas;
CREATE TABLE cardapio (
    id INTEGER PRIMARY KEY,
    comida TEXT,
    tipo TEXT
);

INSERT INTO cardapio (comida, tipo) VALUES ('macarronada', 'italiana');
INSERT INTO cardapio (comida, tipo) VALUES ('lasanha', 'italiana');
INSERT INTO cardapio (comida, tipo) VALUES ('croissant', 'francesa');
INSERT INTO cardapio (comida, tipo) VALUES ('yakssoba', 'japonesa');
INSERT INTO cardapio (comida, tipo) VALUES ('barca de sushi', 'japonesa');
INSERT INTO cardapio (comida, tipo) VALUES ('feijoada', 'brasileira');

-- Atualizar a comida na tabela cardapio;
UPDATE cardapio SET comida = 'lasanha_inteira' where id = 2;

-- Visualizar a tabela;
SELECT * from cardapio;

-- Inserir mais uma comida na tabela cardapio;
INSERT INTO cardapio (comida, tipo) VALUES ('lasanha_pedaco', 'italiana');

-- Criar tabela precos e inserir informacoes;
CREATE TABLE precos (
    id INTEGER PRIMARY KEY,
    id_comida TEXT,
    valor REAL,
  	FOREIGN KEY (id_comida) REFERENCES cardapio(id)
);

INSERT INTO precos (id_comida, valor) VALUES (1, 15.50);
INSERT INTO precos (id_comida, valor) VALUES (2, 25.00);
INSERT INTO precos (id_comida, valor) VALUES (3, 13.00);
INSERT INTO precos (id_comida, valor) VALUES (4, 20.00);
INSERT INTO precos (id_comida, valor) VALUES (5, 62.30);
INSERT INTO precos (id_comida, valor) VALUES (6, 30.00);

-- Visuzlizar a tabela precos;
SELECT * FROM precos;

-- Inserir mais um valor na tabela preco;
INSERT INTO precos (id_comida, valor) VALUES (7, 12.00);

-- Criar tabela estoque e inserir informacoes; 
CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
    id_comida INTEGER,
    quantidade INTEGER,
  	validade DATE
);

INSERT INTO estoque (id_comida, quantidade, validade) VALUES (1, 20, '2024-07-30');
INSERT INTO estoque (id_comida, quantidade, validade) VALUES (2, 25, '2024-08-01');
INSERT INTO estoque (id_comida, quantidade, validade) VALUES (3, 68, '2024-09-10');
INSERT INTO estoque (id_comida, quantidade, validade) VALUES (4, 55, '2024-12-30');
INSERT INTO estoque (id_comida, quantidade, validade) VALUES (5, 15, '2024-11-11');
INSERT INTO estoque (id_comida, quantidade, validade) VALUES (6, 40, '2024-10-02');

-- Visuzlizar a tabela estoque;
select * from estoque;

-- Atualizar a validade do produto de id 1 da tabela estoque;
UPDATE estoque SET validade = '2025-07-30' where id = 1;

-- Inserir mais um produto na tabela estoque;
INSERT INTO estoque (id_comida, quantidade, validade) VALUES (7, 40, '2026-01-14');

-- Fazer um JOIN para unir as tabelas e selecionar algumas informacoes;
SELECT cardapio.comida, 
precos.valor, 
estoque.quantidade, 
estoque.validade
FROM cardapio
JOIN precos ON precos.id_comida = cardapio.id
JOIN estoque oN estoque.id_comida = cardapio.id;

-- Selecione por validade;
SELECT cardapio.comida, 
estoque.quantidade, 
estoque.validade
FROM cardapio
JOIN estoque oN estoque.id_comida = cardapio.id
WHERE validade <= '2024-10-01';

-- Selecione por tipo de comida;
SELECT comida, tipo
FROM cardapio
WHERE tipo = 'italiana';

-- Selecionar total em estoque por tipo de comida;
WITH quantidade_estoque AS (
SELECT cardapio.tipo, 
	SUM(estoque.quantidade) AS total_estoque
	FROM estoque
	JOIN cardapio oN cardapio.id = estoque.id_comida
	GROUP BY tipo
	ORDER by total_estoque DESC
  )
  select *
  FROM quantidade_estoque;
