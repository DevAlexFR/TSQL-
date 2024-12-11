-- Criação da tabela Clientes
CREATE TABLE #Clientes (
    ClienteID INT PRIMARY KEY,
    Nome NVARCHAR(100),
    Cidade NVARCHAR(100),
    DataNascimento DATE,
    Salario DECIMAL(10, 2)
);

-- Criação da tabela Pedidos
CREATE TABLE #Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    Valor DECIMAL(10, 2)
);

-- Inserção de dados na tabela Clientes
INSERT INTO #Clientes (ClienteID, Nome, Cidade, DataNascimento, Salario) VALUES
(1, 'Maria Silva', 'São Paulo', '1990-05-10', 5000.00),
(2, 'João Oliveira', 'Rio de Janeiro', '1985-10-15', 7000.00),
(3, 'Ana Pereira', 'Curitiba', '1992-08-21', 5500.00);

-- Inserção de dados na tabela Pedidos
INSERT INTO #Pedidos (PedidoID, ClienteID, DataPedido, Valor) VALUES
(1, 1, '2023-01-01', 100.00),
(2, 2, '2023-01-02', 200.00),
(3, 1, '2023-01-03', 150.00),
(4, 4, '2023-02-10', 300.00);

-- INNER JOIN: Retorna apenas as linhas que têm correspondência nas duas tabelas.
SELECT c.Nome, p.DataPedido, p.Valor
FROM #Clientes c
INNER JOIN #Pedidos p ON c.ClienteID = p.ClienteID;

-- LEFT JOIN: Retorna todas as linhas da tabela da esquerda, e as correspondências da tabela da direita (NULL se não houver correspondência).
SELECT c.Nome, p.DataPedido, p.Valor
FROM #Clientes c
LEFT JOIN #Pedidos p ON c.ClienteID = p.ClienteID;

-- RIGHT JOIN: Retorna todas as linhas da tabela da direita, e as correspondências da tabela da esquerda (NULL se não houver correspondência).
SELECT c.Nome, p.DataPedido, p.Valor
FROM #Clientes c
RIGHT JOIN #Pedidos p ON c.ClienteID = p.ClienteID;


-- FULL OUTER JOIN: Retorna todas as linhas quando há uma correspondência em uma das tabelas (NULL se não houver correspondência em qualquer uma das tabelas).
SELECT c.Nome, p.DataPedido, p.Valor
FROM #Clientes c
FULL OUTER JOIN #Pedidos p ON c.ClienteID = p.ClienteID;
