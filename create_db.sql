create database db_notas 
on primary (
	NAME = db_notas, 
	filename = 'C:\SQL\db_notas.mdf',
	SIZE = 6MB,
	MAXSIZE = 10MB,
	FILEGROWTH = 10%
)