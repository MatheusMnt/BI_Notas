use DW_Grades

drop table if exists Alunos
create table Alunos 
(
	 ID_Aluno int primary key identity (0,7)
	,[Nome completo] varchar(100)
	,[Apelido] varchar(50)
	,idade int
	,email varchar(200)
)

drop table if exists Disciplinas 
create table Disciplinas
(
	 ID_Disciplina int primary key identity (1,1)
	,[Nome Disciplina] varchar(100)
	,[Grupo Disciplina] varchar(100)
	,[Média] float
	,[Período Esperado] int
	,[Período Real] int
 )

 drop table if exists Notas 
 create table Notas
 (
	 Nota float
	,Tipo varchar(20)
	,Peso float null
	,ID_Aluno int
	,ID_Disciplina int 
	,constraint fk_ID_ALUNO foreign key (ID_ALUNO) references Alunos (ID_ALUNO)
	,constraint fk_ID_DISCIPLINA foreign key (ID_DISCIPLINA) references Disciplinas (ID_DISCIPLINA)
 )