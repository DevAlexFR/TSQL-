-- Criar uma tabela temporária com dados fictícios
SELECT *
INTO #TempData
FROM (
    VALUES
        (1, 'JOÃO SILVA'),
        (2, 'MARIA FERNANDA'),
        (3, 'CARLOS ALBERTO')
) AS TempData(UserID, FullName);

-- Usar funções de texto para manipular nomes
SELECT 
    UserID,
    FullName,
    UPPER(FullName) AS UppercaseName,
    LOWER(FullName) AS LowercaseName,
    LEFT(FullName, 5) AS First5Chars,
    LEN(FullName) AS NameLength
FROM #TempData;

-- Soltar a tabela temporária
DROP TABLE #TempData;