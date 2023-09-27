UPDATE Livros
SET Titulo = 'Teste Update'
WHERE Id = 5
GO

-- para criar o procedimento
CREATE PROCEDURE BuscarLivroPorTitulo @TituloLivro varchar(120)
AS
SELECT Id, Titulo, DataPublicacao, QuantidadePaginas, EditoraId FROM Livros 
WHERE Titulo = @TituloLivro

-- para executar o procedimento
EXEC BuscarLivroPorTitulo @TituloLivro = 'Titulo'
GO

CREATE TRIGGER CalculaPaginas
ON Livros -- tabela que a ação ocorrerá
FOR INSERT -- operacao irá disparar o gatilho
AS
BEGIN -- abre bloco de comando executado em conjunto
DECLARE -- declara duas variaveis
@Id INT,
@QtdPaginas INT
SELECT @Id = Id, @QtdPaginas = QuantidadePaginas
FROM INSERTED -- seleciona os dados da insercao
SELECT (QuantidadePaginas * 2) / 60 as 'Tempo de Leitura em Horas' FROM Livros
WHERE Id = @Id
END

INSERT INTO Livros (Titulo, DataPublicacao, QuantidadePaginas, EditoraId)
VALUES ('Livro BD - 2 edição', '11-02-2021', 300, 1)