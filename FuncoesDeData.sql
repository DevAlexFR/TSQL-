-- Criar uma tabela temporária com vendas fictícias
SELECT *
INTO #TempSales
FROM (
    VALUES
        (1, '2024-01-01'),
        (2, '2024-01-15'),
        (3, '2024-02-01'),
        (4, '2024-02-10')
) AS TempData(SaleID, SaleDate);

-- Usar funções de data para extrair informações
SELECT 
    SaleID,
    SaleDate,
    YEAR(SaleDate) AS SaleYear,
    MONTH(SaleDate) AS SaleMonth,
    DAY(SaleDate) AS SaleDay,
    DATEADD(DAY, 30, SaleDate) AS Plus30Days
FROM #TempSales;

-- Soltar a tabela temporária
DROP TABLE #TempSales;