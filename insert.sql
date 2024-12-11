-- Criação da tabela Clientes
CREATE TABLE #Clientes (
    ClienteID INT PRIMARY KEY,
    Nome NVARCHAR(100),
    Cidade NVARCHAR(100),
    DataNascimento DATE,
    Salario DECIMAL(10, 2)
);

-- Insert na tabela Clientes
INSERT INTO #Clientes (ClienteID, Nome, Cidade, DataNascimento, Salario) VALUES
(1, 'Maria Silva', 'São Paulo', '1990-05-10', 5000.00),
(2, 'João Oliveira', 'Rio de Janeiro', '1985-10-15', 7000.00);
