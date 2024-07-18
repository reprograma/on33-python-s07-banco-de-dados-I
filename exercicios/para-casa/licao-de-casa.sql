-- create table estoque
CREATE TABLE CARROS (
Id_chassi INTEGER PRIMARY KEY,
Modelo TEXT,
Ano INTEGER
  );

CREATE TABLE Estoque (
    Id INTEGER PRIMARY KEY,
    CARROS_id INTEGER,
    quantidade INTEGER,
    FOREIGN KEY (CARROS_id) REFERENCES CARROS(id)
  );


INSERT INTO Carros (Id_chassi, Modelo , Ano) VALUES ('4060960', 'Hatch', 2023);
INSERT INTO Carros (Id_chassi, Modelo , Ano) VALUES ('0060970', 'Sedã', 2024);
INSERT INTO Carros (Id_chassi, Modelo , Ano) VALUES ('0060820', 'SUV', 2022);

INSERT INTO Estoque (CARROS_id, quantidade) VALUES (1,1);
INSERT INTO Estoque (CARROS_id, quantidade) VALUES (2,1);
INSERT INTO Estoque (CARROS_id, quantidade) VALUES (3,1);

SELECT * FROM CARROS;
SELECT * FROM Estoque;
UPDATE Estoque SET quantidade = 5 WHERE id =1;
UPDATE Estoque SET CARROS_id =4  WHERE id =1;
UPDATE CARROS SET Modelo = 'Fusca' WHERE id_chassi =60820;
ALTER TABLE CARROS ADD placa char;
INSERT INTO Carros (placa) VALUES ('Ri12o34');
INSERT INTO Carros (placa) VALUES ('Ri92o35');
INSERT INTO Carros (placa) VALUES ('Ri72o38');
INSERT INTO Carros (placa) VALUES ('Ri42o39');
UPDATE CARROS SET Modelo = 'Ford' WHERE id_chassi =4060961;
UPDATE CARROS SET placa = 'Ri78o34' WHERE id_chassi =4060960;
