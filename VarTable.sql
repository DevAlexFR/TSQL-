-- Criar uma tabela de variáveis
DECLARE @TempTable TABLE (
    ID INT,
    Name NVARCHAR(50)
);

-- Inserir dados na tabela de variáveis
INSERT INTO @TempTable (ID, Name)
VALUES 
    (1, 'Item A'),
    (2, 'Item B'),
    (3, 'Item C');

-- Consultar os dados
SELECT * FROM @TempTable;