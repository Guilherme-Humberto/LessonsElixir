# Funções anônimas

soma = fn (a, b) -> a + b end
IO.puts(soma.(1, 3))

# Utilizar funções anônimas é uma prática comum em Elixir, há uma taquigrafia para fazê-lo:
subtrair = &(&1 - &2)
IO.puts(subtrair.(5, 1))

multiplicar = fn (a, b, c) -> a * b * c end
IO.puts(multiplicar.(2, 4, 5))

# Funções nomeadas
# Estas funções nomeadas são definidas com a palavra-chave def dentro de um módulo
defmodule Pessoa do
    def getName(nome) do
        IO.puts("O nome digitado foi " <> nome)
    end
end

nome = IO.gets("Digite o nome: ")
Pessoa.getName(nome)


# Se o corpo da nossa função apenas tem uma linha, nós podemos reduzi-lo ainda mais com do:
defmodule Comida do
    def getFood(produto), do: IO.puts("Eu gosto de #{produto}")
end

comida = IO.gets("Digite o nome da sua comida favorita: ")
Comida.getFood(comida)


# Pode usar funções com mesmo nome. Elas serão diferenciadas pela quantida de argumentos (aridade)
defmodule Filmes do
    def getFilms(filme), do: IO.puts("Eu assisto o filme " <> filme)
    def getFilms(serie, filme), do: IO.puts("Eu assisto a filme: #{serie} e o filme #{filme}")
end

filme = IO.gets("Digite o nome do filme: ")
serie = IO.gets("Digite o nome da serie: ")
Filmes.getFilms(filme)
Filmes.getFilms(serie, filme)
