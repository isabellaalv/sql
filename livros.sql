CREATE DATABASE biblioteca;

Use biblioteca;

CREATE TABLE Autores (
	IdAutor     INT PRIMARY KEY IDENTITY,
	NomeAutor	VARCHAR(200) NOT NULL
);

CREATE TABLE Generos (
	IdGenero	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(200) NOT NULL
);

CREATE TABLE Livros (
	IdLivro		INT PRIMARY KEY IDENTITY,
	Titulo		VARCHAR(255),
	IdAutor		INT FOREIGN KEY REFERENCES Autores (IdAutor),
	IdGenero	INT FOREIGN KEY REFERENCES Generos (IdGenero)
);

--SELECIONAR TUDO DAS SEGUINTES TABELAS 
SELECT * FROM Generos;
SELECT * FROM Autores;
SELECT * FROM Livros;

INSERT INTO Livros (Titulo , IdAutor , IdGenero)
VALUES ('A seleção', 1 , 1) , ('A culpa é das estrelas' , 2,2 ) , ('Elite' ,3 , 3) , ('Não se apague não' ,4 ,4 ) , ('Harry Potter' ,5 , 5) , ('Diario de Banana' ,6 ,6 );


INSERT INTO Generos (Nome)
VALUES ('Terror') , ('Ação') , ('Suspense') , ('Romance') , ('Misterio') , ('Isa');

INSERT INTO Autores (NomeAutor)
VALUES ('Join') , ('Kiara') , ('Machado') , ('Assis') , ('Carlos') , ('Drummond');

UPDATE Generos
SET Nome = 'Suspense'
WHERE IdGenero = 3;

UPDATE Generos
SET Nome = 'Amor'
WHERE IdGenero = 6;

UPDATE Livros
SET IdGenero =  6
WHERE IdLivro = 2;

delete from Autores where IdAutor in (1);
delete from Livros where IdAutor in (1);

DROP TABLE Generos;