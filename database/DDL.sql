DROP DATABASE unibpc;

CREATE DATABASE unibpc;

use unibpc;

CREATE TABLE pessoa (
	cpf BIGINT PRIMARY KEY,
    nome varchar(255) NOT NULL,
    endereco varchar(255) NOT NULL,
    telefone BIGINT NOT NULL
);

CREATE TABLE aluno (
	matricula INT PRIMARY KEY AUTO_INCREMENT,
    cpfPessoa BIGINT NOT NULL,
    FOREIGN KEY (cpfPessoa) REFERENCES pessoa(cpf)
);

CREATE TABLE professor (
	matricula INT PRIMARY KEY AUTO_INCREMENT,
    carteiraTrabalho INT NOT NULL,
    cpfPessoa BIGINT NOT NULL,
    FOREIGN KEY (cpfPessoa) REFERENCES pessoa(cpf)
);

CREATE TABLE disciplina (
	numero INT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    matriculaProfessor INT NOT NULL,
    FOREIGN KEY (matriculaProfessor) REFERENCES professor(matricula)
);

CREATE TABLE turma (
	numero VARCHAR(255) PRIMARY KEY,
    diaSemana TINYINT NOT NULL,
    horario TIME NOT NULL,
    sala varchar(255) NOT NULL,
	numeroDisciplina INT NOT NULL,
    FOREIGN KEY (numeroDisciplina) REFERENCES disciplina(numero)
);

CREATE TABLE turmaAluno(
    id INT AUTO_INCREMENT PRIMARY KEY,
    numeroTurma VARCHAR(255) NOT NULL,
    matriculaAluno INT NOT NULL,
    FOREIGN KEY (numeroTurma) REFERENCES turma(numero),
    FOREIGN KEY (matriculaAluno) REFERENCES aluno(matricula)
)

CREATE TABLE unidade (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255) NOT NULL,
    endereco varchar(255) NOT NULL,
    telefone BIGINT NOT NULL
);

CREATE TABLE curso (
	id INT AUTO_INCREMENT PRIMARY KEY,
    cargaHoraria int NOT NULL,
    nome varchar(255) NOT NULL
);

CREATE TABLE cursoDisciplina (
	id INT AUTO_INCREMENT PRIMARY KEY,
    disciplinaNumero INT NOT NULL,
    cursoId INT NOT NULL,
    foreign key (disciplinaNumero) references disciplina(numero),
    foreign key (cursoId) references curso(id)
);

CREATE TABLE cursoUnidade (
	id INT AUTO_INCREMENT PRIMARY KEY,
    cursoId INT NOT NULL,
    unidadeId INT NOT NULL,
    foreign key (cursoId) references curso(id),
    foreign key (unidadeId) references unidade(id)
);

CREATE TABLE alunoCurso (
	id INT AUTO_INCREMENT PRIMARY KEY,
    alunoMatricula INT NOT NULL,
    cursoId INT NOT NULL,
    foreign key (alunoMatricula) references aluno(matricula),
    foreign key (cursoId) references curso(id)
);






