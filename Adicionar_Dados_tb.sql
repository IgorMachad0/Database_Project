INSERT INTO Editoras (Nome)
VALUES ('Editora Aprender');

INSERT INTO Editoras (Nome)
VALUES ('Editora B'), ('Editora C');
GO

INSERT INTO [Livros] ([Titulo]
      ,[DataPublicacao]
      ,[QuantidadePaginas]
      ,[EditoraId])

VALUES ('Titulo'
      ,'01/01/0001'
      ,'100'
      ,'1')
GO

INSERT INTO [Livros] ( [Id]
	  ,[Titulo]
      ,[DataPublicacao]
      ,[QuantidadePaginas]
      ,[EditoraId])

VALUES ( 50
	  ,'Titulo'
      ,'01/01/0001'
      ,'100'
      ,'1')
GO

INSERT INTO Autores (Nome)
VALUES ('Autor Joao da Silva')

INSERT INTO Livros (Titulo, DataPublicacao,
QuantidadePaginas, EditoraId)
VALUES ('Livro A', '26-03-2013', 1216, 1)

INSERT INTO Livros
VALUES ('Livro B', '26-03-2021', 512, 1)
GO