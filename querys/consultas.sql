-- CONSULTAS EXEMPLOS PARA O BANCO DE DADOS DA CLÍNICA VETERINÁRIA

-- 1. Listar todas as consultas de um animal específico
SELECT consulta.id_consulta, consulta.data_atendimento, consulta.anotacoes
FROM consulta
INNER JOIN animal ON consulta.id_animal = animal.id_animal
WHERE animal.nome = 'Buddy';

-- 2. Listar medicamentos prescritos em uma consulta
SELECT medicamento.nome, Rel1.quantidade
FROM Rel1
INNER JOIN medicamento ON Rel1.id_medicamento = medicamento.id_medicamento
WHERE Rel1.id_consulta = 1;

-- 3. Calcular o custo total de uma consulta (exames + medicamentos)
SELECT consulta.id_consulta,
       SUM(exame.valor * Rel.quantidade) AS total_exames,
       SUM(medicamento.valor * Rel1.quantidade) AS total_medicamentos,
       SUM(exame.valor * Rel.quantidade + medicamento.valor * Rel1.quantidade) AS custo_total
FROM consulta
LEFT JOIN Rel ON consulta.id_consulta = Rel.id_consulta
LEFT JOIN exame ON Rel.id_exame = exame.id_exame
LEFT JOIN Rel1 ON consulta.id_consulta = Rel1.id_consulta
LEFT JOIN medicamento ON Rel1.id_medicamento = medicamento.id_medicamento
WHERE consulta.id_consulta = 1
GROUP BY consulta.id_consulta;