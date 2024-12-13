-- Criar uma tabela temporária com clientes nacionais
SELECT *
INTO #TempCustomers
FROM (
    VALUES
        (1, 'Cliente A', 'Brasil'),
        (2, 'Cliente B', 'Brasil')
) AS TempData(CustomerID, CustomerName, Country);

-- Adicionar clientes internacionais com UNION
SELECT *
FROM #TempCustomers
UNION
SELECT *
FROM (
    VALUES
        (3, 'Cliente C', 'EUA'),
        (4, 'Cliente D', 'Canadá')
) AS TempData(CustomerID, CustomerName, Country);

-- Soltar a tabela temporária
DROP TABLE #TempCustomers;