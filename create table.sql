USE [BANCO];
GO

CREATE TABLE [dbo].[TABELA] (
       [Coluna01] date null,             -- Armazena apenas data (AAAA-MM-DD)
       [Coluna02] float null,            -- Armazena números de ponto flutuante
       [Coluna03] datetime null,         -- Armazena data e hora (AAAA-MM-DD hh:mm:ss)
       [Coluna04] nvarchar(50) null,     -- Armazena strings de comprimento variável até 50 caracteres, permite caracteres Unicode
       [Coluna05] varchar(50) null,      -- Armazena strings de comprimento variável até 50 caracteres, não-Unicode
       [Coluna06] char(50) null,         -- Armazena strings de comprimento fixo de 50 caracteres, não-Unicode

       [Coluna07] int null,              -- Armazena números inteiros
       [Coluna08] smallint null,         -- Armazena números inteiros pequenos
       [Coluna09] bigint null,           -- Armazena números inteiros grandes
       [Coluna10] tinyint null,          -- Armazena números inteiros pequenos sem sinal (0-255)
       [Coluna11] bit null,              -- Armazena valores booleanos (0 ou 1)
       [Coluna12] decimal(10, 2) null,   -- Armazena números decimais de precisão fixa
       [Coluna13] numeric(10, 2) null,   -- Igual ao decimal, armazena números decimais de precisão fixa
       [Coluna14] money null,            -- Armazena valores monetários
       [Coluna15] smallmoney null,       -- Armazena valores monetários menores

       [Coluna16] time null,             -- Armazena apenas hora (hh:mm:ss)
       [Coluna17] datetime2 null,        -- Armazena data e hora com precisão adicional
       [Coluna18] smalldatetime null,    -- Armazena data e hora com precisão reduzida
       [Coluna19] datetimeoffset null,   -- Armazena data e hora com fuso horário

       [Coluna20] text null,             -- Armazena grandes quantidades de texto, não recomendado para novos designs
       [Coluna21] ntext null,            -- Armazena grandes quantidades de texto Unicode, não recomendado para novos designs
       [Coluna22] image null,            -- Armazena dados binários de imagem, não recomendado para novos designs
       [Coluna23] binary(50) null,       -- Armazena dados binários de comprimento fixo
       [Coluna24] varbinary(50) null,    -- Armazena dados binários de comprimento variável

       [Coluna25] uniqueidentifier null, -- Armazena um identificador global único (GUID)
       [Coluna26] xml null,              -- Armazena dados XML
       [Coluna27] hierarchyid null,      -- Armazena valores hierárquicos

       [Coluna28] sql_variant null,      -- Armazena valores de diversos tipos de dados suportados pelo SQL Server
       [Coluna29] geography null,        -- Armazena dados espaciais para dados geográficos
       [Coluna30] geometry null          -- Armazena dados espaciais para dados geométricos
);
GO
