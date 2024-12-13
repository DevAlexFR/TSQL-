-- Criar uma tabela temporária com vendas fictícias
SELECT *
INTO #TempSales
FROM (
    VALUES
        ('2024-01', 'Produto A', 100),
        ('2024-01', 'Produto B', 200),
        ('2024-02', 'Produto A', 150),
        ('2024-02', 'Produto B', 250)
) AS TempData(Month, Product, Sales);

-- Usar PIVOT para transformar os meses em colunas
SELECT 
    Product,
    [2024-01] AS Sales_January,
    [2024-02] AS Sales_February
FROM (
    SELECT Month, Product, Sales
    FROM #TempSales
) AS SourceData
PIVOT (
    SUM(Sales) FOR Month IN ([2024-01], [2024-02])
) AS PivotTable;

-- Soltar a tabela temporária
DROP TABLE #TempSales;