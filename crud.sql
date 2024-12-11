-- Criação da tabela temporária Clientes
CREATE TABLE #Clientes (
    ClienteID INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(100),
    Email NVARCHAR(100),
    Telefone NVARCHAR(15),
    DataNascimento DATE
);

-- Inserção (Create)
INSERT INTO #Clientes (Nome, Email, Telefone, DataNascimento) VALUES
('Maria Silva', 'maria.silva@example.com', '1111-1111', '1990-05-10'),
('João Oliveira', 'joao.oliveira@example.com', '2222-2222', '1985-10-15'),
('Ana Pereira', 'ana.pereira@example.com', '3333-3333', '1992-08-21');

-- Leitura (Read)
SELECT * FROM #Clientes;

-- Atualização (Update)
UPDATE #Clientes
SET Email = 'maria.silva_updated@example.com'
WHERE ClienteID = 1;

-- Verificar atualização
SELECT * FROM #Clientes WHERE ClienteID = 1;

-- Exclusão (Delete)
DELETE FROM #Clientes
WHERE ClienteID = 2;

-- Verificar exclusão
SELECT * FROM #Clientes;
