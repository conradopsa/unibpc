
SELECT distinct cpf
FROM pessoa

SELECT * FROM aluno, professor

SELECT f.* FROM pessoa f, professor p WHERE f.cpf = p.cpf

SELECT nome, cpf FROM pessoa WHERE endereco = "Rua Plínio de Oliveira"

SELECT nome, cpf FROM pessoa WHERE endereco = "Rua Plínio de Oliveira" AND cpf = 92439944769

SELECT * FROM pessoa

SELECT * FROM aluno

SELECT * FROM professor

SELECT * FROM disciplina

SELECT * FROM turma

SELECT * FROM unidade

SELECT * FROM curso

SELECT * FROM cursoDisciplina

SELECT * FROM cursoUnidade

SELECT * FROM alunoCurso

SELECT nome FROM pessoa

SELECT matricula FROM aluno

SELECT matricula FROM professor

SELECT nome FROM disciplina

SELECT numero FROM turma

SELECT nome FROM unidade

SELECT nome FROM curso
