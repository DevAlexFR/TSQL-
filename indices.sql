-- Criação da tabela Clientes
CREATE TABLE #Clientes (
    ClienteID INT PRIMARY KEY,
    Nome NVARCHAR(100),
    Cidade NVARCHAR(100),
    DataNascimento DATE,
    Salario DECIMAL(10, 2)
);

-- Cria o indice da tabela
CREATE INDEX idx_nome ON #Clientes(Nome);
