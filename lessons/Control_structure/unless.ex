# Usar unless/2 é bem parecido com o uso do if/2 
# porém trabalhando de forma negativa

unless is_integer(10.5) do
    IO.puts("Isto nao se parece com um numero inteiro")
end