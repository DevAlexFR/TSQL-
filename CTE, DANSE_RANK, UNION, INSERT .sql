USE [PCYGNUS];
GO

IF OBJECT_ID('tempdb..#tabela') IS NOT NULL
BEGIN
    DROP TABLE #tabela;
END
GO

CREATE TABLE #tabela (
    [dados] nvarchar(50),
    [Coluna01] date,
    [Coluna02] float,
    [Coluna03] datetime,
    [Coluna04] nvarchar(50),
    [Coluna05] varchar(50),
    [Coluna06] char(50)
);

INSERT INTO #tabela ([dados], [Coluna01], [Coluna02], [Coluna03], [Coluna04], [Coluna05], [Coluna06])
VALUES 
    ('1', '2023-01-01', 1.1, '2023-01-01 10:00:00', 'Teste1', 'Teste1', 'Teste1'),
    ('2', '2023-01-02', 2.2, '2023-01-02 11:00:00', 'Teste2', 'Teste2', 'Teste2');
GO

IF OBJECT_ID('tempdb..#Base') IS NOT NULL
BEGIN
    DROP TABLE #Base;
END
GO

WITH CTE_01 AS (
    SELECT *
    FROM #tabela
    WHERE [dados] = '1'
),
CTE_02 AS (
    SELECT *
    FROM #tabela
    WHERE [dados] = '2'
)

--*--*--*--* || Cte_Base || *--*--*--*--
SELECT * INTO #Base FROM CTE_01
UNION ALL
SELECT * FROM CTE_02;

SELECT *,
       [Exemplo] = DENSE_RANK() OVER (PARTITION BY CONCAT(A.[Coluna01], LEFT(A.[Coluna02], 13))
                                      ORDER BY A.[Coluna03])
FROM #Base AS A;
