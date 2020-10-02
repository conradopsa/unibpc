use unibpc;

INSERT INTO pessoa(cpf, nome, endereco, telefone) VALUES
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
(31927581710, "Samuel Theo Gomes", "Travessa Pedro Lemos", 9336489678);

INSERT INTO aluno(matricula, cpfPessoa) VALUES
(default, 92439944769),
(default, 93708814096),
(default, 16119641483),
(default, 50254029485),
(default, 90703631780),
(default, 57537221308),
(default, 47719283635),
(default, 47806439706),
(default, 96281043901),
(default, 71965239030),
(default, 56986520824),
(default, 09278548723),
(default, 34265899315),
(default, 98142033941),
(default, 91967724091),
(default, 82353644090),
(default, 61144792622),
(default, 18459282538),
(default, 41905300778),
(default, 08378084132),
(default, 37290555422),
(default, 19744408502),
(default, 55828139428),
(default, 10656095156),
(default, 51395551740),
(default, 74891729694),
(default, 17287695820);

INSERT INTO professor(matricula, carteiraTrabalho, cpfPessoa) VALUES
(default, 446147552, 31927581710), -- id = 1
(default, 358252891, 09578342683), -- id = 2
(default, 432329687, 45423482100); -- id = 3

INSERT INTO disciplina(numero, nome, matriculaProfessor) VALUES
(1, "Modelos de Linguagem de Programação", 1),
(2, "Gerência de Projetos", 2);

INSERT INTO turma(numero, diaSemana, horario, sala, numeroDisciplina) VALUES
(801, 2, '08:00:00', 101, 1),
(802, 2, '10:00:00', 102, 2),
(803, 3, '08:00:00', 101, 2);

INSERT INTO unidade(id, nome, endereco, telefone) VALUES
(default, "Meier", "Rua Venceslau", 2125631919);

INSERT INTO curso(id, cargaHoraria, nome) VALUES
(default, 60, "Ciência da Computação");

INSERT INTO cursodisciplina(id, disciplinaNumero, cursoId) VALUES
(default, 1, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 2, (SELECT id FROM curso WHERE nome = "Ciência da Computação"));

INSERT INTO cursoUnidade(id, cursoId, unidadeId) VALUES
(default, (SELECT id FROM curso WHERE nome = "Ciência da Computação"), (SELECT id FROM unidade WHERE nome = "Meier"));

INSERT INTO alunoCurso(id, alunoMatricula, cursoId) VALUES
(default, 1 , (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 2 , (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 3 , (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 4 , (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 5 , (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 6 , (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 7 , (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 8 , (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 9 , (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 10, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 11, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 12, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 13, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 14, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 15, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 16, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 17, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 18, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 19, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 20, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 21, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 22, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 23, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 24, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 25, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 26, (SELECT id FROM curso WHERE nome = "Ciência da Computação")),
(default, 27, (SELECT id FROM curso WHERE nome = "Ciência da Computação"));