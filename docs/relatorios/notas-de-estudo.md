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

### Regras para Mapeamento de Cardinalidades

Para o modelo lógico, aplicamos a seguinte regra de mapeamento das cardinalidades entre entidades:

- Em **(1,1 - 1,n)**, ignoramos as mínimas e analisamos as máximas:
  - Se houver **1-n**, colocamos a chave da entidade do lado **n**.
  
- Em **(n,n)**, criamos uma nova entidade associativa para representar a relação, garantindo a normalização do modelo.
  
- Em **(1,1)**, onde há uma relação de união entre as tabelas, devemos reavaliar se essa cardinalidade realmente representa a relação entre as entidades. É um caso raro e deve ser analisado com cuidado.

Essas regras são cruciais para a validação da normalização e para a construção do diagrama lógico.

### Validação das Cardinalidades

Uma técnica de validação das cardinalidades envolve "pintar" as entidades para identificar suas relações:
- Para um relacionamento **1-n**, representamos a chave do **1** com uma bolinha na entidade do lado **n**. Isso indica que, ao acessar a entidade **n**, o sistema tem acesso à entidade **1**.
- No caso de um relacionamento **n-n**, ao criar uma nova entidade associativa, ela receberá uma bolinha das duas entidades, indicando a interdependência entre elas.

Com isso, ao realizar um **SELECT** na entidade central (a "mãe"), será possível acessar as entidades relacionadas diretamente, exceto quando houver um relacionamento **n-n**, onde a consulta deve ser realizada na nova entidade associativa gerada.

### Construção do Diagrama Lógico

Após a validação das cardinalidades, o diagrama lógico é gerado. Nele, declaramos as entidades e suas chaves, além dos relacionamentos e as cardinalidades adequadas.