# Manual de Uso do Banco de Dados da Clínica Veterinária

**Ano de Referência:** 2024  
**Autor:** João Pedro Cerqueira

---

## **Descrição Geral**
O banco de dados foi projetado para gerenciar informações de uma clínica veterinária. Ele inclui o cadastro de clientes, animais, veterinários, consultas, medicamentos, exames e os relacionamentos entre essas entidades. O objetivo principal é garantir a integridade e organização das informações relacionadas ao atendimento clínico.

---

## **Estrutura do Banco de Dados**

### **Tabelas Principais**
1. **`cliente`**
   - **Descrição:** Armazena informações dos clientes da clínica.
   - **Colunas:**
     - `id_cliente` (INT): Identificador único do cliente.
     - `nome` (VARCHAR): Nome do cliente.
     - `cpf` (VARCHAR): CPF do cliente.

2. **`animal`**
   - **Descrição:** Armazena informações dos animais vinculados aos clientes.
   - **Colunas:**
     - `id_animal` (INT): Identificador único do animal.
     - `data_nascimento` (DATE): Data de nascimento do animal.
     - `raca` (VARCHAR): Raça do animal.
     - `nome` (VARCHAR): Nome do animal.
     - `descricao` (VARCHAR): Detalhes adicionais sobre o animal.
     - `id_cliente` (INT): Chave estrangeira vinculada ao cliente.

3. **`veterinario`**
   - **Descrição:** Armazena informações dos veterinários que realizam os atendimentos.
   - **Colunas:**
     - `id_veterinario` (INT): Identificador único do veterinário.
     - `nome` (VARCHAR): Nome do veterinário.
     - `cfmv` (VARCHAR): Registro profissional no Conselho Federal de Medicina Veterinária.
     - `especialidade` (VARCHAR): Especialidade do veterinário.

4. **`consulta`**
   - **Descrição:** Registra as consultas realizadas na clínica.
   - **Colunas:**
     - `id_consulta` (INT): Identificador único da consulta.
     - `data_atendimento` (DATE): Data da consulta.
     - `anotacoes` (VARCHAR): Observações feitas pelo veterinário.
     - `id_animal` (INT): Chave estrangeira vinculada ao animal atendido.
     - `id_veterinario` (INT): Chave estrangeira vinculada ao veterinário responsável.

5. **`medicamento`**
   - **Descrição:** Lista os medicamentos disponíveis na clínica.
   - **Colunas:**
     - `id_medicamento` (INT): Identificador único do medicamento.
     - `nome` (VARCHAR): Nome do medicamento.
     - `valor` (FLOAT): Preço unitário do medicamento.

6. **`exame`**
   - **Descrição:** Lista os exames disponíveis na clínica.
   - **Colunas:**
     - `id_exame` (INT): Identificador único do exame.
     - `nome` (VARCHAR): Nome do exame.
     - `valor` (FLOAT): Preço do exame.

7. **`Rel`**
   - **Descrição:** Relaciona consultas e exames realizados.
   - **Colunas:**
     - `id_consulta` (INT): Identificador da consulta.
     - `id_exame` (INT): Identificador do exame.
     - `quantidade` (INT): Quantidade de exames realizados.

8. **`Rel1`**
   - **Descrição:** Relaciona consultas e medicamentos prescritos.
   - **Colunas:**
     - `id_consulta` (INT): Identificador da consulta.
     - `id_medicamento` (INT): Identificador do medicamento.
     - `quantidade` (INT): Quantidade de medicamentos prescritos.

---

## **Instruções de Uso**

### **1. Criação das Tabelas**

Primeiro, execute o script de criação das tabelas. Este script cria a estrutura necessária para o banco de dados, incluindo todas as tabelas e seus relacionamentos. O arquivo de script para a criação das tabelas pode ser encontrado no repositório com o nome `create_tables.sql`.

Para utilizá-lo, basta rodar o comando abaixo no seu ambiente SQL:

```sql
-- Criação das tabelas
source create_tables.sql;
```

### **2. Alimentação das Tabelas**

Após a criação das tabelas, você pode alimentar o banco de dados com os dados necessários. O script para alimentação das tabelas pode ser encontrado no repositório com o nome insert_data.sql. Este script insere dados de exemplo em cada tabela, garantindo que o banco de dados tenha informações iniciais para utilização.

Para utilizá-lo, execute o comando abaixo no seu ambiente SQL:

```sql
-- Inserção de dados
source insert_data.sql;
```

Esses scripts devem ser executados em sequência para criar e alimentar as tabelas do banco de dados. O primeiro script cria a estrutura necessária, e o segundo insere os dados de exemplo nas tabelas.