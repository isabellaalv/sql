-- DQL

SELECT Cliente.Nome , Veiculo.IdVeiculo, Veiculo.Placa, Modelo.Nome FROM Cliente
INNER JOIN Aluguel ON Cliente.IdCliente = Aluguel.IdCliente
INNER JOIN Veiculo ON Aluguel.IdVeiculo = Veiculo.IdVeiculo
INNER JOIN Modelo ON Veiculo.IdModelo = Modelo.IdModelo;
--INNER JOIN Marca ON Modelo.IdMarca = Marca.IdMarca;

SELECT * FROM Marca;
SELECT * FROM Aluguel;