
exec sp_configure 'show advanced options',1
go
reconfigure with override
go
exec sp_configure 'ad hoc distributed queries', 1
go
reconfigure with override
go

-- Acima e configuração da instancia para poder rodar openrowset

drop table if EXISTS #Base -- deleta a temp caso exista

	select *
	into #Base
	from openrowset ('SQLOLEDB', '11.111.111.11';'user';'senha',
		'select * from [banco].[dbo].[tabela]'
	)

	insert into openrowset('SQLNCLI', 'Server=NameServer; Trusted_Connection=yes;', [banco].[dbo].[tabela]) -- openrowset cria uma conexao temporaria com outra instancia
	select * from #Base
