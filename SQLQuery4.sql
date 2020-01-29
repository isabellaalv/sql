CREATE DATABASE Musica_tarde;

USE Musica_tarde;

CREATE TABLE EstiloMusical (
	IdEstilo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200)
);

CREATE TABLE Artista (
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	IdEstilo INT FOREIGN KEY REFERENCES EstiloMusical (IdEstilo)
);

SELECT * FROM EstiloMusical;
SELECT * FROM Artista;

