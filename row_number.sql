-- Criar uma tabela temporária com dados fictícios
SELECT *
INTO #TempEmployees
FROM (
    VALUES
        (1, 'Ana', 'Financeiro', 5000),
        (2, 'João', 'TI', 7000),
        (3, 'Maria', 'Financeiro', 6000),
        (4, 'Carlos', 'RH', 4000)
) AS TempData(EmployeeID, Name, Department, Salary);

-- Gerar um ranking dos funcionários por salário dentro de cada departamento
SELECT 
    Name,
    Department,
    Salary,
    ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS Rank
FROM #TempEmployees;

-- Soltar a tabela temporária
DROP TABLE #TempEmployees;