-- Criação da tabela temporária Clientes e inserção de registros
CREATE TABLE #Clientes (
    ClienteID INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(100),
    Email NVARCHAR(100),
    Telefone NVARCHAR(15),
    DataNascimento DATE
);

INSERT INTO #Clientes (Nome, Email, Telefone, DataNascimento) VALUES
('Maria Silva', 'maria.silva@example.com', '1111-1111', '1990-05-10'),
('João Oliveira', 'joao.oliveira@example.com', '2222-2222', '1985-10-15'),
('Ana Pereira', 'ana.pereira@example.com', '3333-3333', '1992-08-21');

-- Criação da tabela temporária Pedidos e inserção de registros
CREATE TABLE #Pedidos (
    PedidoID INT IDENTITY(1,1) PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    Valor DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES #Clientes(ClienteID)
);

INSERT INTO #Pedidos (ClienteID, DataPedido, Valor) VALUES
(1, GETDATE() - 5, 100.00),
(2, GETDATE() - 35, 200.00),
(1, GETDATE() - 10, 150.00),
(3, GETDATE() - 25, 250.00);

SELECT * FROM #Clientes;

SELECT DISTINCT c.Nome
FROM #Clientes c
JOIN #Pedidos p ON c.ClienteID = p.ClienteID
WHERE p.DataPedido >= DATEADD(DAY, -30, GETDATE());

-- Criação de uma função para retornar todos os pedidos feitos por um cliente com base no nome
CREATE FUNCTION dbo.fn_PedidosPorCliente (@Nome NVARCHAR(100))
RETURNS TABLE
AS
RETURN
(
    SELECT p.*
    FROM #Pedidos p
    JOIN #Clientes c ON p.ClienteID = c.ClienteID
    WHERE c.Nome = @Nome
);

-- Exemplo de uso da função
SELECT * FROM dbo.fn_PedidosPorCliente('Maria Silva');

-- Consulta para retornar a média de idade dos clientes
SELECT AVG(DATEDIFF(YEAR, DataNascimento, GETDATE())) AS MediaIdade
FROM #Clientes;
