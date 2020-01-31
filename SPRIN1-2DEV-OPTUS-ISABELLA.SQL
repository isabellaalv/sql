

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

ALTER TABLE Albuns
DROP COLUMN QtnMnts;

ALTER TABLE Albuns
ADD QtnMnts BIGINT;

DROP TABLE Usuario;

DROP TABLE TipoUsuario;

DROP TABLE Artista;

DROP TABLE Albuns;

DROP TABLE Estilo;

DROP DATABASE estilomusical_tarde;

USE Musica_tarde;

--DML Manipulação de dados

SELECT * FROM Albuns;
SELECT * FROM Estilo;
SELECT * FROM Artista;
SELECT * FROM TipoUsuario;
SELECT * FROM Usuario;

--Inserir dados

INSERT INTO Estilo (Nome)
VALUES ('Samba') , ('Gospel') , ('Hip-Hop');

INSERT INTO Artista (Nome)
VALUES ('Anitta') , ('Luisa Sonsa') , ('Bruna Carla');

INSERT INTO Albuns (Nome, IdArtista , IdEstilo , DataLancamento , QtnMnts , Visualizacao )
VALUES ('bb' , 8 , 4 , '05/03/3000' , 140 , 3000);

INSERT INTO TipoUsuario (Titulo)
VALUES ('ADM'),
	   ('Usuario');

INSERT INTO Usuario (Nome , IdTipo) 
VALUES ('Pedro' , 4);

-- Update

UPDATE Artista
SET Nome = 'nirvana'
WHERE IdArtista = 1;

UPDATE Artista
SET Nome = 'Cleo Pires'
WHERE IdArtista = 9;

UPDATE TipoUsuario
SET Titulo = 'adm'
WHERE IdTipo = 4;

UPDATE Albuns
SET Visualizacao = 50000
WHERE IdAlbuns = 10;



delete from TipoUsuario where IdTipo in (3);

delete from Albuns where IdAlbuns in (2);

delete from Albuns where IdAlbuns in (8);

-- limpar dados da tabela

TRUNCATE TABLE Albuns;
TRUNCATE TABLE Usuario;
TRUNCATE TABLE TipoUsuario;

SELECT * FROM Artista;

SELECT Nome FROM Artista;

SELECT Nome , DataLancamento FROM Albuns;

SELECT * FROM Albuns WHERE IdAlbuns = 1;

SELECT * FROM Albuns WHERE IdAlbuns > 1;

SELECT Nome, QtnMnts FROM Albuns
WHERE (DataLancamento IS NULL) or (Visualizacao IS NULL);

SELECT * FROM Artista
WHERE Nome LIKE '%Mars%';

SELECT * FROM Artista
WHERE Nome LIKE 'a%';

SELECT * FROM Artista
WHERE Nome LIKE '%a';

SELECT IdAlbuns , Nome FROM Albuns
WHERE Nome LIKE 'Rare%'

SELECT IdAlbuns , Nome FROM Albuns
WHERE Nome LIKE '%Rare'

SELECT IdAlbuns , Nome FROM Albuns
WHERE Nome LIKE '%Rare%'

-- Ordenação

SELECT Nome FROM Albuns
ORDER BY Nome;

SELECT IdAlbuns , Nome , QtnMnts FROM Albuns
ORDER BY QtnMnts;

SELECT IdAlbuns , Nome , QtnMnts FROM Albuns
ORDER BY QtnMnts DESC;

SELECT IdAlbuns , Nome , DataLancamento FROM Albuns
ORDER BY DataLancamento ASC;


SELECT COUNT (IdAlbuns) FROM Albuns;

SELECT * FROM Albuns;
SELECT * FROM Estilo;
SELECT * FROM Artista;

-- Exer 1
SELECT * FROM Albuns WHERE IdArtista = 7;

-- Exer 2 
SELECT * FROM Albuns WHERE DataLancamento = '3000-03-05';

-- Exer 3 
SELECT * FROM Albuns WHERE IdEstilo = 3;  


-- Exer 4 

SELECT IdAlbuns , IdArtista , Nome, DataLancamento FROM Albuns
ORDER BY DataLancamento DESC;



