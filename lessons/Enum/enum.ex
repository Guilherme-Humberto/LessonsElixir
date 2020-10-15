# Trabalhando com enums
# A enumeração é o núcleo da programação funcional e é uma coisa incrivelmente útil.


# A função all? irá analisar cada um dos valores do Enum
# Irá retornar true se o tamanho dos valores for maior do que 4 
enum = Enum.all?(["Carros", "Pessoa", "Animal"], fn(e) -> String.length(e) > 4 end)
IO.inspect(enum)
IO.puts("----------------------------------------------")

# A função any? irá analisar cada um dos valores do Enum
# Irá retornar true se qualquer um dos valores se encaixar na condicional
enum2 = Enum.any?(["Ana", "Pessoa", "Animal"], fn(e) -> String.length(e) == 3 end)
IO.inspect(enum2)
IO.puts("----------------------------------------------")

# A função chunk_every irá quebrar a coleção em grupos
enum3 = Enum.chunk_every([1, 2, 3, 4, 5], 2)
IO.inspect(enum3)
IO.puts("----------------------------------------------")

# A função chunk_by irá quebrar a coleção em grupos de acordo com o o tamanho dos valores
enum4 = Enum.chunk_by(["Sapo", "one", "two", "four", "five"], fn(x) -> String.length(x) end)
IO.inspect(enum4)
IO.puts("----------------------------------------------")

# A função each itera sobre os valores da coleção
Enum.each(["Carros", "Pessoa", "Animal"], fn(x) -> IO.puts(x) end)
IO.puts("----------------------------------------------")

# A função Enum.map aplica uma função para cada valor da coleção e retorna uma nova coleção
enum5 = Enum.map([1, 2, 3, 4, 5], fn(x) -> x * 2 end)
IO.inspect(enum5)
IO.puts("----------------------------------------------")

# A função emin retorna o menor valor da coleção
enum6 = Enum.min([1, 2, 3])
IO.inspect(enum6)
IO.puts("----------------------------------------------")

# A função emin retorna o maior valor da coleção
enum7 = Enum.max([1, 2, 3, 4, 10])
IO.inspect(enum7)
IO.puts("----------------------------------------------")

# Pegando os valores pares da coleção
# A função filter/2 nos permite filtrar uma coleção para incluir apenas os elementos que são avaliados como true provendo uma função como argumento.
enum8 = Enum.filter([1, 2, 3, 4, 5, 6], fn(x) -> rem(x, 2) == 0 end)
IO.inspect(enum8)
IO.puts("----------------------------------------------")

# Com reduce/3 podemos transformar nossa coleção em um único valor
# para fazer isto aplicamos um acumulador opcional (10 neste exemplo) que será passado a nossa função; se não prover um acumulador, o primeiro valor será usado:
enum9 = Enum.reduce([1, 2, 3], 0, fn(x, y) -> x + y end )
IO.inspect(enum9)
IO.puts("----------------------------------------------")


# A função uniq elimina valores duplicados de uma coleção
enum10 = Enum.uniq([1, 2, 3, 3, 4, 5])
IO.inspect(enum10)