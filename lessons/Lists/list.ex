# Trabalhando com lista

lista = ["Guilherme ", "Humberto ", "Ciline "]
IO.puts(lista)
IO.puts "------------------------------------"
# Prepending (rápido)
# Inserindo valores no inicio da lista
lista = ["Leticia " | lista]
IO.puts(lista)
IO.puts "------------------------------------"

# Appending (lento)
# Inserindo valores no final da lista
lista = lista ++ ["Maria "]
IO.puts(lista)
IO.puts "------------------------------------"

# Concatenando lista
lista1 = ["Carro ", "Cozinha ", "Predio "] ++ ["Moto"]
IO.puts(lista1)
IO.puts "------------------------------------"

# Subtraindo valores de uma lista
lista1 = lista1 -- ["Moto", "Carro"]
IO.puts(lista1)
IO.puts "------------------------------------"

# Topo e Cauda
# Com a função HD podemos pegar o primeiro elemento da lista
# Com a função HL podemos pegar o resto da lista
lista2 = ["Pizza ", "Banana ", "Hamburguer"]
# Pegando primeiro valor da lista
IO.puts(hd(lista2))
# Pegando o resto dos valores da lista
IO.puts(tl(lista2))

# Tuplas
tuple = {"Guilherme", "Maria"}
IO.puts(is_tuple(tuple))
IO.puts "------------------------------------"

# Lista de palavras chaves 
lista3 = [{ :nome, "Guilherme" }, { :sobrenome, "Humberto" }]
IO.inspect(lista3)