-- DML 

INSERT INTO Empresa (Nome)
VALUES ('aaaaa'), ('bbbb'), ('ccccc'), ('dddd'), ('eeee'), ('fffff');

INSERT INTO Marca (Nome)
VALUES ('Aston Martin.'), ('Chrysler.'), ('Citroën'), ('Chevrolet.'), ('BMW.'), ('Audi.');

INSERT INTO Cliente (Nome, CPF)
VALUES ('Isa', '11111'), ('ana', '2222'), ('pedro', '333'), ('luiz',' 4444'), ('carlos', '5555'), ('lari', '6666');

INSERT INTO Modelo (Nome)
VALUES ('UNO'), ('PALIO'), ('FOX'), ('SIENA'), ('CELTA'), ('HB20');

INSERT INTO Veiculo (Placa, IdEmpresa, IdModelo)
VALUES ('123AC',1,1),('145AS',2,2), ('321ER',3,3), ('432WE',4,4), ('678CV',5,5),('432',6,6);

INSERT INTO Aluguel (DataInicio, DataFinal, IdCliente, IdVeiculo)
VALUES ('2020/01/19', '2020/02/15',1,1), ('2019/12/16', '2020/02/03',2,2),
('2018/06/17','2019/05/01',3,3), ('2019/12/20','2019/12/30',4,4),
('2020/02/02','2020/05/03',5,5), ('2019/09/16','2019/12/16',6,6);

