# Os módulos permitem a organização de funções em um namespace.

defmodule Periodo do
    def manha(nome) do
        IO.puts("Bom dia #{nome}")
    end

    def tarde(nome) do
        IO.puts("Boa tarde #{nome}")
    end

    def noite(nome) do
        IO.puts("Boa noite #{nome}")
    end
end

Periodo.manha("Guilherme")
Periodo.tarde("Guilherme")
Periodo.noite("Guilherme")
IO.puts("------------------------------")

# O ponto de interrogação em zero? significa que esta função retorna um booleano
# Função defp indica que são função privadas e só podem acessadas dentro do modulo
defmodule Numero do
    def not_a_number?(number) do
        IO.puts(is_number(number))
    end

    def is_a_number?(number) do
        IO.puts(is_number(number))
        # Acessando função defp
        getNumber(200)
    end

    defp getNumber(number) do
        IO.puts("Este e um numero: #{number}")
    end
end

Numero.is_a_number?(10)
Numero.not_a_number?("10")
IO.puts("------------------------------")

# Atributos de módulo são mais comumente usados como constantes no Elixir
defmodule Pessoa do
    # Atributo do módulo
    @message "Seja bem vindo ao Elixir"

    def getPeople(nome) do
        IO.puts("#{@message} #{nome}")
    end
end

Pessoa.getPeople("Guilherme")
IO.puts("------------------------------")

# Estrutura não podem ser acessar no mesmo contexto que são definas
defmodule Estrutura do
    defstruct nome: "Guilherme", idade: 20 
end

# Função para acessar estrutura
defmodule Example do
    def read, do: IO.inspect(%Estrutura{})
end

Example.read()

defmodule AtualizarEstrutura do
    def update do
        pessoa = %Estrutura{}
        novapessoa = %{ pessoa | nome: "Ana", idade: 12 }
        IO.puts(novapessoa.nome)
        IO.puts(novapessoa.idade)
    end
end

AtualizarEstrutura.update()