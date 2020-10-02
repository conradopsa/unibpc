use unibpc;

-- Nome de todos alunos
SELECT nome 
FROM aluno a 
    JOIN pessoa pe ON a.cpfPessoa = pe.cpf;

-- Nome de todos professores
SELECT nome 
FROM professor pr 
    JOIN pessoa pe ON pr.cpfPessoa = pe.cpf;

-- Nome de todos os alunos matriculados no curso de Ciência da Computação
SELECT pe.nome 
FROM aluno a 
	JOIN pessoa pe ON a.cpfPessoa = pe.cpf
    JOIN alunocurso ac ON ac.alunoMatricula = a.matricula
    JOIN curso c ON c.id = ac.cursoID
WHERE c.nome = "Ciência da Computação";

-- Quantidade de alunos por turma
SELECT t.numero, count(*) as 'quantidade de aluno'
FROM 
	turma t
    JOIN turmaAluno ta ON ta.numeroTurma = t.numero
GROUP BY t.numero;

-- Nome de todos os alunos matriculados na turma 802
SELECT pe.nome
FROM aluno a 
	JOIN pessoa pe ON a.cpfPessoa = pe.cpf
    JOIN turmaAluno ta ON a.matricula = ta.matriculaAluno
    JOIN turma t ON t.numero = ta.numeroTurma
WHERE t.numero = '802';

-- Todas pessoas que moram na Rua Plínio de Oliveira
SELECT * FROM pessoa WHERE endereco = "Rua Plínio de Oliveira";

-- Consultando dados isolados em suas tabelas:
SELECT * FROM pessoa;
SELECT * FROM aluno;
SELECT * FROM professor;
SELECT * FROM disciplina;
SELECT * FROM turma;
SELECT * FROM unidade;
SELECT * FROM curso;
SELECT * FROM cursoDisciplina;
SELECT * FROM cursoUnidade;
SELECT * FROM alunoCurso;
