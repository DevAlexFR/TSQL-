-- Criar uma tabela temporária global
CREATE TABLE ##GlobalTempTable (
    ID INT,
    Name NVARCHAR(50)
);

-- Inserir dados fictícios
INSERT INTO ##GlobalTempTable (ID, Name)
VALUES 
    (1, 'Item A'),
    (2, 'Item B');

-- Consultar os dados
SELECT * FROM ##GlobalTempTable;

-- Soltar a tabela temporária global
DROP TABLE ##GlobalTempTable;