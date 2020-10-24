# O pipe pega o resultado da esquerda e o passa para o lado direito

nome = "Guilherme Humberto" |> String.upcase() |> String.split()
IO.inspect(nome)

numero = IO.getn("Digite um numero: ") |> String.to_integer()
IO.inspect(numero)

palavra = "Brasileiro" |> String.ends_with?("Brasileiro")
IO.inspect(palavra)