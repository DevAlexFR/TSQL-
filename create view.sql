-- Criação da tabela de clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome NVARCHAR(100),
    Cidade NVARCHAR(100)
);

-- Criação da tabela de pedidos
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    Valor DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Inserção de dados de exemplo
INSERT INTO Clientes (ClienteID, Nome, Cidade) VALUES
(1, 'Maria Silva', 'São Paulo'),
(2, 'João Oliveira', 'Rio de Janeiro');

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, Valor) VALUES
(1, 1, '2023-01-01', 100.00),
(2, 2, '2023-01-02', 200.00),
(3, 1, '2023-01-03', 150.00);

-- Criação da VIEW
CREATE VIEW vw_PedidosClientes AS
SELECT 
    p.PedidoID,
    p.DataPedido,
    p.Valor,
    c.Nome AS NomeCliente,
    c.Cidade
FROM 
    Pedidos p
JOIN 
    Clientes c ON p.ClienteID = c.ClienteID;

-- Consultando a VIEW
SELECT * FROM vw_PedidosClientes;
