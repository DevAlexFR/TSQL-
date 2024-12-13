-- Criar uma tabela temporária com dados fictícios
SELECT *
INTO #TempData
FROM (
    VALUES
        (1, 'Produto A'),
        (2, 'Produto B'),
        (3, 'Produto A'),
        (4, 'Produto C'),
        (5, 'Produto B')
) AS TempData(ProductID, ProductName);

-- Detectar duplicatas
SELECT 
    ProductName,
    COUNT(*) AS DuplicateCount
FROM #TempData
GROUP BY ProductName
HAVING COUNT(*) > 1;

-- Soltar a tabela temporária
DROP TABLE #TempData;