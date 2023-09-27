SELECT * FROM [Estudos_SP1].[dbo].[Livros]
SELECT * FROM [Estudos_SP1].[dbo].[LivrosAutores]
SELECT * FROM [Estudos_SP1].[dbo].[Autores]
SELECT * FROM [Estudos_SP1].[dbo].[Editoras]
GO

SELECT * FROM Livros
INNER JOIN Editoras
ON Livros.EditoraId = Editoras.Id
GO

CREATE TABLE Test1
(Nome VARCHAR(50))

CREATE TABLE Test2
(Nome VARCHAR(50))

INSERT INTO Test1 VALUES ('Abdo'), ('Verisure'), ('Activia'), ('Dorival')
INSERT INTO Test2 VALUES ('Vanderlei'), ('Verisure'), ('Condoriano'), ('Activia'), ('Dorival')
GO

SELECT * FROM Test1
LEFT JOIN Test2
ON Test1.Nome = Test2.Nome
GO

SELECT * FROM Test1
RIGHT JOIN Test2
ON Test1.Nome = Test2.Nome
GO

SELECT * FROM Test1
FULL OUTER JOIN Test2
ON Test1.Nome = Test2.Nome
GO