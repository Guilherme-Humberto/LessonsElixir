# Trabalhando com símbolos e operadores

# Valor de ponto flutuante
valor = 10.5
IO.puts(is_float(valor))

# Valor inteiro
valor = 10
IO.puts(is_integer(valor))

# Valor do tipo Átomo, cujo valor é seu nome
valor = :Guilherme
IO.puts(is_atom(valor))

# Concatenando
nome = IO.gets("Digite um nome: ")
IO.puts "Como vai? " <>  nome

# Interpolando
nome = IO.gets("Digite um nome: ")
IO.puts "Como vai? #{nome}"

# Comparando
valor1 = 10
valor2 = 20
IO.puts(valor1 == valor2)
IO.puts( valor1 > valor2 )
IO.puts( valor1 != valor2 )

# Pode-se associar valores às variáveis desta maneira
{x, y} = {2, 1}
IO.puts(x)
IO.puts(y)
