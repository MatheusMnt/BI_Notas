create procedure proc_insertNotas(@aluno VARCHAR(100), @nota float, @disciplina varchar(100))
as 
begin
	
	declare @qtd_tran int
	select @qtd_tran = @@TRANCOUNT


	begin try 

			if @qtd_tran = 0 begin
				begin tran
			end
			
			declare @id_disciplina int
			select 
				@id_disciplina - d.ID_Disciplina
			from Disciplinas d 
			where d.[Nome Disciplina] like @disciplina

			insert into notas 
			(
				 Nota
				,ID_Aluno
				,ID_Disciplina
			)
			select 
				 @nota
				,a.ID_Aluno
				,@id_disciplina
			from Alunos a 
			
			if @qtd_tran = 0 and XACT_STATE() <> - 1 begin
				commit
			end

	end try 
	begin catch

		declare @msgErro varchar(max)
		if @qtd_tran = 0 begin
			raiserror(@msgErro, 17, 1)
			rollback
		end

	end catch 
end