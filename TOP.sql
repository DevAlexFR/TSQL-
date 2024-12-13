-- Criar uma tabela temporária com dados fictícios de produtos
SELECT *
INTO #TempProducts
FROM (
    VALUES
        (1, 'Produto A', 300),
        (2, 'Produto B', 150),
        (3, 'Produto C', 500),
        (4, 'Produto D', 100)
) AS TempData(ProductID, ProductName, Price);

-- Selecionar os 2 produtos mais caros
SELECT TOP 2 *
FROM #TempProducts
ORDER BY Price DESC;

-- Soltar a tabela temporária
DROP TABLE #TempProducts;