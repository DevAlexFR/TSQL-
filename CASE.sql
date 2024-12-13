-- Criar uma tabela temporária com produtos fictícios
SELECT *
INTO #TempProducts
FROM (
    VALUES
        (1, 'Produto A', 100, 'Ativo'),
        (2, 'Produto B', 0, 'Inativo'),
        (3, 'Produto C', 50, 'Ativo'),
        (4, 'Produto D', 0, 'Inativo')
) AS TempData(ProductID, ProductName, StockQuantity, Status);

-- Alterar o status com base na quantidade em estoque
SELECT 
    ProductName,
    StockQuantity,
    CASE 
        WHEN StockQuantity = 0 THEN 'Fora de Estoque'
        ELSE 'Disponível'
    END AS StockStatus
FROM #TempProducts;

-- Soltar a tabela temporária
DROP TABLE #TempProducts;