-- Contar o número de clientes
SELECT COUNT(*) AS TotalClientes FROM #Clientes;

-- Somar o valor total dos pedidos
SELECT SUM(Valor) AS TotalVendas FROM #Pedidos;

-- Encontrar a média dos salários dos clientes
SELECT AVG(Salario) AS SalarioMedio FROM #Clientes;

-- Encontrar o valor máximo dos pedidos
SELECT MAX(Valor) AS MaiorVenda FROM #Pedidos;
