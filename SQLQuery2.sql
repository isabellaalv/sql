CREATE DATABASE estilomusical_tarde;

USE estilomusical_tarde;

CREATE TABLE Artista (
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200) NOT NULL
);

CREATE TABLE TipoUsuario (
	IdTipo INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (100) NOT NULL
);

CREATE TABLE Usuario (
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200) NOT NULL,
	IdTipo INT FOREIGN KEY REFERENCES TipoUsuario (IdTipo)
);

CREATE TABLE Estilo (
	IdEstilo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200)
);

CREATE TABLE Albuns (
	IdAlbuns INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	IdArtista INT FOREIGN KEY REFERENCES Artista (IdArtista),
	IdEstilo INT FOREIGN KEY REFERENCES Estilo (IdEstilo)
);

SELECT * FROM Albuns;
SELECT * FROM Estilo;
SELECT * FROM Artista;
SELECT * FROM TipoUsuario;
SELECT * FROM Usuario;

ALTER TABLE Albuns
ADD DataLancamento VARCHAR (100)

ALTER TABLE Albuns
ADD QtnMnts TIME ;

ALTER TABLE Albuns 
ADD Visualizacao INT; 

ALTER TABLE Albuns
ALTER COLUMN DataLancamento Date;

DROP TABLE Albuns;

DROP TABLE Usuario;

ALTER TABLE Usuario 
DROP COLUMN Nome;

DROP TABLE Usuario;

DROP TABLE TipoUsuario;

DROP TABLE Artista;

DROP TABLE Albuns;

DROP TABLE Estilo;

DROP DATABASE estilomusical_tarde;

USE Musica_tarde;


