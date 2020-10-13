# Trabalhando com mapas

# Diferente das lista de palavras chaves. Os maos não seguem uma ordem e permitem chavem de qualquer tipo
map = %{:foo => "bar", "hello" => :world}
IO.puts map[:foo]
IO.puts map["hello"]
IO.puts "------------------------------------"

# O elixir sobrescreve valor duplicados
map2 = %{:nome => "Pessoa", :nome => "Outra pessoa"}
IO.puts map2[:nome]
IO.puts "------------------------------------"

# Pode-se acessar os valores atráves de suas respectivas chaves
map3 = %{nome: "Guilherme", sobrenome: "Humberto"}
IO.inspect(map3.nome)
IO.puts "------------------------------------"

# Os mapas tem sua própria sintaxe para atualizar e acessar átomos como chaves:
# Esta sintaxe funciona apenas para atualizar uma chave que já existe no mapa
map4 = %{nome: "Guilherme", sobrenome: "Silva"}
map4 = %{ map4 | nome: "Maria" }
IO.inspect(map4)
IO.puts "------------------------------------"

# Para criar uma nova chave, use Map.put/3
map5 = %{nome: "Guilherme"}
IO.inspect(map5)

# Inserindo chave e valor no mapa
map5 = Map.put(map5, :idade, 20)
IO.inspect(map5)