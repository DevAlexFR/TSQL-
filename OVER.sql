-- Criar uma tabela temporária com dados fictícios
SELECT *
INTO #TempSales
FROM (
    VALUES
        (1, 'Produto A', 100),
        (2, 'Produto B', 200),
        (3, 'Produto C', 150),
        (4, 'Produto D', 300)
) AS TempData(SaleID, ProductName, SaleAmount);

-- Calcular soma cumulativa das vendas
SELECT 
    SaleID,
    ProductName,
    SaleAmount,
    SUM(SaleAmount) OVER (ORDER BY SaleID) AS CumulativeSales
FROM #TempSales;

-- Soltar a tabela temporária
DROP TABLE #TempSales;