CREATE TABLE Editoras
(
Id INT PRIMARY KEY IDENTITY --A propriedade IDENTITY é utilizado para gerar valores de chave. Para
							--cada registro inserido, ele incrementa baseado na especificação que
							--por padrão, começa em 1 e soma 1 a cada item inserido.
,Nome VARCHAR(120) NOT NULL UNIQUE
)
GO

CREATE TABLE Autores
(
Id INT PRIMARY KEY IDENTITY
,Nome VARCHAR(120) NOT NULL
)
GO

CREATE TABLE Livros
(
Id INT PRIMARY KEY IDENTITY
,Titulo VARCHAR(120)
,DataPublicacao DATE
,QuantidadePaginas INT
 --para adicionar a coluna e referência da chave estrangeira
,EditoraId INT FOREIGN KEY REFERENCES Editoras(Id)
)
GO

CREATE TABLE LivrosAutores
(
LivroId INT FOREIGN KEY REFERENCES Livros(Id)
,AutorId INT FOREIGN KEY REFERENCES Autores(Id)
)
GO

ALTER TABLE Livros
ADD Descricao TEXT
GO

USE [Estudos_SP1];
GO

ALTER TABLE Livros
DROP COLUMN Descricao;
GO