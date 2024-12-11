-- Criação da PROCEDURE de insert client
CREATE PROCEDURE #InserirCliente
    @ClienteID INT,
    @Nome NVARCHAR(100),
    @Cidade NVARCHAR(100),
    @DataNascimento DATE,
    @Salario DECIMAL(10, 2)
AS
BEGIN
    INSERT INTO #Clientes (ClienteID, Nome, Cidade, DataNascimento, Salario)
    VALUES (@ClienteID, @Nome, @Cidade, @DataNascimento, @Salario);
END;

-- Chamada
EXEC #InserirCliente 3, 'Ana Pereira', 'Curitiba', '1992-08-21', 5500.00;
