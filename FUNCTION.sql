-- Criar uma função escalar para calcular imposto
CREATE FUNCTION CalculateTax (@Amount MONEY)
RETURNS MONEY
AS
BEGIN
    RETURN @Amount * 0.15; -- 15% de imposto
END;

-- Criar uma tabela temporária com vendas
SELECT *
INTO #TempSales
FROM (
    VALUES
        (1, 'Produto A', 100.00),
        (2, 'Produto B', 200.00),
        (3, 'Produto C', 150.00)
) AS TempData(SaleID, ProductName, SaleAmount);

-- Usar a função para calcular o imposto
SELECT 
    ProductName,
    SaleAmount,
    dbo.CalculateTax(SaleAmount) AS TaxAmount
FROM #TempSales;

-- Soltar a tabela temporária
DROP TABLE #TempSales;

-- Excluir a função criada
DROP FUNCTION CalculateTax;