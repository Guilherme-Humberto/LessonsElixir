# Funções anônimas

soma = fn (a, b) -> a + b end
IO.puts(soma.(1, 3))

soma2 = &(&a * &b)
IO.puts(soma2.(5, 5))