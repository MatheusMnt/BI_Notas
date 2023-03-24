create database DW_Grades 
on primary (
	NAME = db_notas, 
	filename = 'C:\SQL\DW_Grades.mdf',
	SIZE = 6MB,
	MAXSIZE = 10MB,
	FILEGROWTH = 10%
)