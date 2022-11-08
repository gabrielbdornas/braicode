# Curso de Python

---

# Setup

- Ferramentas:
	- Linux
	- Sublime
	- Terminal

- Você lembra melhor as coisas que faz do que as coisas que vê/lê.
- O terminal interativo Python pode ser seu melhor amigo.
- Terminal interativo x Códigos salvos em arquivos para executar `2 + 2`.

---

# Básico

- `2 + 2` = Expressão (valores + operadores que serão avaliados)
- `4` também é considerado uma expressão.

---

# Erros são normais 

- Mensagens de erro não quebrarão seu computador.
- Não fique preocupado em errar
- Instruções erradas ou inválidas (`5 +`) geram erros que podem ser pesquisados
- Desenvolvedores profissionais erram o tempo todo a diferença é que eles sabem pesquisar a solução.

---

# Operadores

- Operadores listados abaixo estão em ordem de procedência.
- Você pode utilizar parenteses para substituir a ordem de procedência.

| Operador     | Operação                                | Exemplo     | Resultado     |
| :----------: | :-------------------------------------: | :---------: | :-----------: |
| **           | Exponent                                | 2 ** 3      | 8             |
| %            | Modulus/remainder                       | 22 % 8      | 6             |
| //           | Integer divison / floored quotation     | 22 // 8     | 2             |
| /            | Division                                | 22 / 8      | 2.75          |
| *            | Multiplication                          | 3 * 5       | 15            |
| -            | Subtraction                             | 5 - 2       | 3             |
| +            | Addition                                | 2 + 2       | 4             |

---

# Operadores

	!Python
	2+3*6

	(2+3)*6

	2**8

	23/7

	23//7

	23%7

	2+     2

	(5-1)*((7+1)/(3-1))

---

# Data Types

- Categoria de valores, sendo os mais comuns:

| Data Type           | Exemplo                                 |
| :----------:        | :-------------------------------------: |
| Integers            | -2, -1, 0, 1, 2, 3                      |
| Float-point numbers | -1.25, -1.0, 0.0, 0.5, 1.0, 2.0         |
| Strings             | 'a', 'Olá', '11', '1.0'                 |

- Diferença entre 42, 42.0 e '42'
- Sempre utilize aspas no início e no final de strings (evitar erros)

---

# String Concatenation and Replication

Mudança de função dos operadores `+` e `*` quando usados em strings.


	!Python
	'Gabriel ' + 'Dornas'

	'Gabriel ' + 1

	'Gabriel ' + '1' # integer para string

	'Gabriel ' * 3

	'Gabriel ' * 3.5 # multiplicar uma string por float

	'Gabriel ' * 'Dornas' # multiplicar duas strings

---

# Variáveis

	!Python
	name = 'Gabriel Dornas'

	age = 20

	name = 'Gabriel Braico Dornas'

	age = 37

- São "caixas" na memória do computador para armazenar valores.
- Servem para reutilizar valores ou expressões anteriormente avaliadas.
- Assignment statement = nome da variável + `=` + valor a ser armazenado.
- É criada ou inicializada a primeira vez que um valor é armazenado.
- Novos valores podem ser atribuídos a variáveis já existentes (overwritting).

---

# Nome de Variáveis

- Descrever o dado de maneira clara.
- Regras de ouro:
	- Não pode conter espaços.
	- Letras, números e underscore (_).
	- Não pode começar com número.
	- Não pode ser uma palavra reservada (`help('keywords')`)
- São case-sensitive.
- Convenção sugere utilizar o padrão [snake_case](https://en.wikipedia.org/wiki/Snake_case).

---

# Nosso primeiro programa

	!python
	# Este programa perguntará meu nome e idade

	print('Olá, Vamos fazer algumas perguntas!')

	name = input('Qual seu nome? ')

	age = input('Qual sua idade? ')

	print('Prazer ' + name + '. Você tem ' + age + ' anos.')

	print('Seu nome tem ' + str(len(name)) + ' caracteres.')

	print('Você fará ' + str(int(age) + 1) + ' anos.')

- Página 12

