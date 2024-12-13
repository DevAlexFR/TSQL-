-- Criar uma tabela temporária com dados fictícios
SELECT *
INTO #TempEmployees
FROM (
    VALUES
        (1, 'João', 'Analista', 4000),
        (2, 'Maria', 'Gerente', 8000),
        (3, 'Carlos', 'Estagiário', 2000)
) AS TempData(EmployeeID, Name, JobTitle, Salary);

-- Atualizar o salário dos estagiários
UPDATE #TempEmployees
SET Salary = Salary + 500
WHERE JobTitle = 'Estagiário';

-- Consultar os dados atualizados
SELECT * FROM #TempEmployees;

-- Soltar a tabela temporária
DROP TABLE #TempEmployees;