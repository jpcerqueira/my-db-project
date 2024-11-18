-- POPULAÇÃO DAS TABELAS DA CLÍNICA VETERINÁRIA

-- Inserindo dados na tabela 'cliente'
INSERT INTO cliente (id_cliente, nome, cpf) VALUES 
(1, 'João Silva', '12345678901'),
(2, 'Maria Oliveira', '23456789012'),
(3, 'Pedro Santos', '34567890123');

-- Inserindo dados na tabela 'animal'
INSERT INTO animal (id_animal, data_nascimento, raca, nome, descricao, id_cliente) VALUES 
(1, '2020-05-15', 'Labrador', 'Buddy', 'Cachorro muito ativo e amigável', 1),
(2, '2018-08-20', 'Persa', 'Mimi', 'Gato muito dócil', 2),
(3, '2022-03-10', 'Shih Tzu', 'Toby', 'Cachorro pequeno e peludo', 1);

-- Inserindo dados na tabela 'veterinario'
INSERT INTO veterinario (id_veterinario, nome, cfmv, especialidade) VALUES 
(1, 'Dr. Carlos Mendes', '123456789', 'Clínica Geral'),
(2, 'Dra. Ana Costa', '987654321', 'Dermatologia'),
(3, 'Dr. Roberto Lima', '543216789', 'Ortopedia');

-- Inserindo dados na tabela 'consulta'
INSERT INTO consulta (id_consulta, data_atendimento, anotacoes, id_animal, id_veterinario) VALUES 
(1, '2024-11-15', 'Consulta de rotina, animal saudável.', 1, 1),
(2, '2024-11-16', 'Tratamento para alergia.', 2, 2),
(3, '2024-11-17', 'Exame pré-operatório.', 3, 3);

-- Inserindo dados na tabela 'medicamento'
INSERT INTO medicamento (id_medicamento, nome, valor) VALUES 
(1, 'Antibiótico X', 50.00),
(2, 'Anti-inflamatório Y', 35.50),
(3, 'Vermífugo Z', 20.00);

-- Inserindo dados na tabela 'exame'
INSERT INTO exame (id_exame, nome, valor) VALUES 
(1, 'Hemograma Completo', 80.00),
(2, 'Raio-X', 150.00),
(3, 'Ultrassom', 120.00);

-- Inserindo dados na tabela 'Rel' (Exames realizados em consultas)
INSERT INTO Rel (id_consulta, id_exame, quantidade) VALUES 
(1, 1, 1),
(2, 2, 1),
(3, 3, 1);

-- Inserindo dados na tabela 'Rel1' (Medicamentos prescritos em consultas)
INSERT INTO Rel1 (id_consulta, id_medicamento, quantidade) VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 1);