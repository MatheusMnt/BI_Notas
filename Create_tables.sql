use db_notas

drop table if exists Alunos
create table Alunos 
(
	 ID_Aluno int primary key identity (0,7)
	,[Nome completo] varchar(100)
	,[Apelido] varchar(50)
)

drop table if exists GrupoDisciplina
create table GrupoDisciplina
(	 
	 ID_GRUPO_DISCIPLINA int primary key identity(1,11)
	,[Nome Grupo] varchar(100)
)

drop table if exists Disciplinas 
create table Disciplinas
(
	 ID_Disciplina int primary key identity (1,1)
	,[Nome Disciplina] varchar(100)
	,[ID_GRUPO_DISCIPLINA] int
	,constraint fk_ID_GRUPO_DISCIPLINA foreign key (ID_GRUPO_DISCIPLINA) references GrupoDisciplina (ID_GRUPO_DISCIPLINA)
 )

 drop table if exists Notas 
 create table Notas
 (
	 Nota float
	,ID_Aluno int
	,ID_Disciplina int 
	,constraint fk_ID_ALUNO foreign key (ID_ALUNO) references Alunos (ID_ALUNO)
	,constraint fk_ID_DISCIPLINA foreign key (ID_DISCIPLINA) references Disciplinas (ID_DISCIPLINA)
 )