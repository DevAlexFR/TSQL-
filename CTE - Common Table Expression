-- Exemplo de uso de CTE com dados fictícios
WITH ProductCTE AS (
    SELECT *
    FROM (
        VALUES 
            (1, 'Produto A', 100.00),
            (2, 'Produto B', 200.00),
            (3, 'Produto C', 300.00),
            (4, 'Produto D', 50.00)
    ) AS TempData(ProductID, ProductName, ListPrice)
    WHERE ListPrice > 100
)
SELECT 
    ProductID, 
    ProductName, 
    ListPrice
FROM ProductCTE;