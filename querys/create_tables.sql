CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY,  
    nome VARCHAR(50),  
    cpf VARCHAR(11)
); 

CREATE TABLE animal (
    id_animal INT PRIMARY KEY,  
    data_nascimento DATE,  
    raca VARCHAR(50),  
    nome VARCHAR(50),  
    descricao VARCHAR(200),  
    id_cliente INT
); 

CREATE TABLE consulta (
    id_consulta INT PRIMARY KEY,  
    data_atendimento DATE,  
    anotacoes VARCHAR(200),  
    id_animal INT,  
    id_veterinario INT
); 

CREATE TABLE medicamento (
    id_medicamento INT PRIMARY KEY,  
    nome VARCHAR(50),  
    valor FLOAT
); 

CREATE TABLE exame (
    id_exame INT PRIMARY KEY,  
    nome VARCHAR(50),  
    valor FLOAT
); 

CREATE TABLE veterinario (
    id_veterinario INT PRIMARY KEY,  
    nome VARCHAR(50),  
    cfmv VARCHAR(9),  
    especialidade VARCHAR(50)
); 

CREATE TABLE Rel (
    id_consulta INT,  
    id_exame INT,  
    quantidade INT,  
    PRIMARY KEY (id_consulta, id_exame)
); 

CREATE TABLE Rel1 (
    id_consulta INT,  
    id_medicamento INT,  
    quantidade INT,  
    PRIMARY KEY (id_consulta, id_medicamento)
); 

ALTER TABLE animal ADD FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente);
ALTER TABLE consulta ADD FOREIGN KEY (id_animal) REFERENCES animal (id_animal);
ALTER TABLE consulta ADD FOREIGN KEY (id_veterinario) REFERENCES veterinario (id_veterinario);
ALTER TABLE Rel ADD FOREIGN KEY (id_consulta) REFERENCES consulta (id_consulta);
ALTER TABLE Rel ADD FOREIGN KEY (id_exame) REFERENCES exame (id_exame);
ALTER TABLE Rel1 ADD FOREIGN KEY (id_consulta) REFERENCES consulta (id_consulta);
ALTER TABLE Rel1 ADD FOREIGN KEY (id_medicamento) REFERENCES medicamento (id_medicamento);