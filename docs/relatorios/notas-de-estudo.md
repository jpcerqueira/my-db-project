# Notas de Estudo: Modelo Conceitual, Lógico e Físico de Banco de Dados

## Esquema Conceitual

- Primeiro, identifique as **entidades** no exemplo elaborado, observando os itens com características relacionadas a elas.
  - Exemplo: Cliente possui atributos como **cpf**, **nome**, **sobrenome**, **endereço**, e **telefone**.

- **Marcadores de Identificação**:
  - **Entidades (objetos)**: Marcadas em **negrito**.
  - **Atributos (características)**: Marcados __sublinhado__.

### Entidades e Atributos Identificados:

- **Cliente**: nome, cpf
- **Animal**: nome, raça, data de nascimento, descrição das características
- **Consulta**: data do atendimento, anotações feitas pelo veterinário
- **Exames**: nome, valor, quantidade realizada
- **Medicamentos**: nome, valor, quantidade aplicada
- **Veterinário**: nome, CFMV, especialidade *(atributo multivalorado, 1,n)*

---

## Construção do Diagrama do Modelo Conceitual

1. Defina os **objetos**:
   - Evite utilizar letras maiúsculas, plural, acentos e espaços nos nomes.
   
2. **Chaves Primárias**:
   - Defina as chaves primárias para cada entidade (objeto).

3. **Atributos**:
   - Associe os atributos identificados a cada entidade.

4. **Relacionamentos**:
   - Conecte as entidades seguindo uma lógica de **passo a passo do atendimento**.

5. **Cardinalidades**:
   - Ao definir as cardinalidades, atente para relacionamentos **n para n** (1-n/0-n ou 1-n/1-n, qualquer n-n):
     - Se houver, transforme o relacionamento em uma **entidade associativa** para assegurar a normalização.

## Esquema Lógico
