CREATE DATABASE biblioteca;

Use biblioteca;

CREATE TABLE autores  (
	IdAutor INT PRIMARY KEY IDENTITY,
	NomeAutor VARCHAR(200) NOT NULL
);

CREATE TABLE genero (
	IdGenero INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(200) NOT NULL
);

CREATE TABLE livros (
	IdLivro INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (200) NOT NULL,
	IdAutor INT FOREIGN KEY REFERENCES autores (IdAutor),
	IdGenero INT FOREIGN KEY REFERENCES genero (IdGenero)
);

SELECT * FROM genero;
SELECT * FROM autores;
SELECT * FROM Livros;


ALTER TABLE genero
ADD descricao VARCHAR (255);


ALTER TABLE genero 
ALTER COLUMN descricao CHAR(100);


ALTER TABLE genero
DROP COLUMN descricao;
