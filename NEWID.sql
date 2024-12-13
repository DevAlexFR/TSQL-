-- Criar uma tabela temporária com dados fictícios
SELECT *
INTO #TempRandomData
FROM (
    VALUES
        ('Item A'),
        ('Item B'),
        ('Item C'),
        ('Item D')
) AS TempData(ItemName);

-- Adicionar um identificador aleatório para cada linha
SELECT 
    ItemName,
    NEWID() AS RandomID
FROM #TempRandomData;

-- Soltar a tabela temporária
DROP TABLE #TempRandomData;