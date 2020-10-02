INSERT INTO pessoa(cpf, nome, endereco, telefone)
VALUES
(92439944769, "Aparecida Sandra Rezende", "Rua Plínio de Oliveira", 2138424155),
(93708814096,  "Antônia Mariane Elisa Duarte", "Rua Pastor Fernando Granjeiro", 9538774951),
(16119641483, "Antônia Flávia Mirella dos Santos", "Rua J", 2727958990),
(50254029485 ,"Valentina Louise Viana", "Quadra B", 7339561324),
(90703631780 ,"Ryan Leonardo Pinto", "Rua Doutor Luiz Arthur Vieira de Oliveira e Souza", 8226706014),
(57537221308 ,"Diego Márcio Gael Sales", "Rua Felipe Camarão", 4839541142 ),
(47719283635, "João Roberto da Mata", "Quadra QNG 15", 47719283635),
(47806439706, "Márcia Teresinha Raimunda Aparício", "Quadra QN 1 Conjunto 20", 6128263529),
(96281043901 ,"Giovanna Nair Alana Peixoto", "Rua do Pomar", 8139733762),
(71965239030, "Theo Marcos Vinicius Cavalcanti", "Rua Cecília Meireles", 4125474544),
(56986520824, "Vera Cecília Isabel Silveira", "Avenida Carlos Almeida de Souza", 9626219616),
(09278548723, "Lucca Renato Diogo Fogaça", "Travessa Itu", 4428269545),
(34265899315, "Tereza Evelyn Novaes", "Avenida Perimetral Sul", 3126312258),
(98142033941, "Melissa Luciana Rezende", "Rua Monte Roraima", 1228879297),
(91967724091 ,"Jorge Bruno Oliveira", "Alameda Eduardinho", 2126158674),
(82353644090, "Amanda Andrea Elaine Aragão", "Rua Idelfonso de Almeida", 6837451544),
(61144792622, "Joaquim Henrique André Pereira", "Rua Doutor Ivan Hildebrand da Costa", 6728549362),
(18459282538, "Evelyn Luana Daniela da Cunha", "Rua Mato Grosso", 8529507609),
(41905300778, "Heloise Raquel Moreira", "Travessa Capitão Porfírio", 8537238170),
(08378084132, "Yuri Igor Luiz Corte Real", "Rua Quintino Bocaiúva", 5129950566),
(37290555422, "Marlene Francisca Silva", "Rua Dona Amália Mendes", 5136236024),
(19744408502, "Lavínia Maria Santos", "Avenida Raimundo Álvares da Costa", 9625455070),
(55828139428, "Joana Andreia Patrícia Lopes", "Vila J. Lima", 8539794308),
(10656095156, "Eduarda Laís Melo", "Rua Antenor Clemente Mateus", 3239402383),
(51395551740 ,"Bárbara Lavínia da Rosa", "Rua Japão", 1927776600),
(74891729694, "Fábio Marcos Gomes", "Rua 48", 8526693209),
(17287695820, "Emanuelly Cecília Maya Caldeira", "Rua Salvador Torres Peres", 4327123359),
(45423482100, "Ruan Bryan Enrico Melo", "Rua Botafogo", 2136650372),
(09578342683, "Alícia Teresinha Mirella Pinto", "1ª Travessa Augusto Lacerda", 7129843297),
(31927581710, "Samuel Theo Gomes", "Travessa Pedro Lemos", 9336489678)


INSERT INTO aluno(matricula, cpf)
VALUES
(1000, 92439944769),
(1001, 93708814096),
(1002, 16119641483),
(1003, 50254029485),
(1004, 90703631780),
(1005, 57537221308),
(1006, 47719283635),
(1007, 47806439706),
(1008, 96281043901),
(1009, 71965239030),
(1010, 56986520824),
(1011, 09278548723),
(1012, 34265899315),
(1013, 98142033941),
(1014, 91967724091),
(1015, 82353644090),
(1016, 61144792622),
(1017, 18459282538),
(1018, 41905300778),
(1019, 08378084132),
(1020, 37290555422),
(1021, 19744408502),
(1022, 55828139428),
(1023, 10656095156),
(1024, 51395551740),
(1025, 74891729694),
(1026, 17287695820)

INSERT INTO professor(matricula, carteiraTrabalho, cpf)
VALUES(2000, 446147552, 31927581710),
(2001, 358252891, 09578342683),
(2002, 432329687, 45423482100)

INSERT INTO disciplina(numero, nome, matriculaProfessor)
VALUES(1, "Modelos de Linguagem de Programação", 2000),
(2, "Gerência de Projetos", 2001)

INSERT INTO turma(numero, diaSemana, horario, sala, numeroDisciplina)
VALUES(801, 2, 08:00:00, 101, 1),
(802, 2, 10:00:00, 102, 2),
(803, 3, 08:00:00, 101, 2)

INSERT INTO unidade(id, nome, endereco, telefone)
VALUES(NEWID(), "Meier", "Rua Venceslau", 2125631919)

INSERT INTO curso(id, cargaHoraria, nome)
VALUES(NEWID(), 60, "Complementar de Ciência da Computação")

INSERT INTO cursoDisciplina(id, disciplinaNumero, cursoId)
VALUES(NEWID(), 1, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
VALUES(NEWID(), 2, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso)

INSERT INTO cursoUnidade(id, cursoId, unidadeId)
VALUES(NEWID(), SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso, SELECT id WHERE nome = "Meier" FROM unidade)

INSERT INTO alunoCurso(id, alunoMatricula, cursoId)
(NEWID(), 1000, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1001, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1002, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1003, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1004, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1005, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1006, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1007, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1008, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1009, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1010, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1011, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1012, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1013, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1014, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1015, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1016, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1017, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1018, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1019, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1020, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1021, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1022, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1023, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1024, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1025, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso),
(NEWID(), 1026, SELECT id WHERE nome = "Complementar de Ciência da Computação" FROM curso)