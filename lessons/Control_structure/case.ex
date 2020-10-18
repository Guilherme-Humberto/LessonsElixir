# Considere _ como o else dentro da estrutura de case

case {1, 0, 3} do
    {1, x, 3} when x > 0 -> 
        IO.puts("Este numero e maior que zero") 
    _ -> 
        IO.puts("Este numero nao e maior que zero")
end
IO.puts("------------------------")

case String.valid?(5) do
    x -> IO.puts(x)
    _ -> IO.puts("Error")     
end
IO.puts("------------------------")

case {"Guilherme", "Maria"} do
    {"Guilherme", x} when x == "Maria" ->
        IO.puts("Esta e a Maria")
    _ -> 
        IO.puts("Esta nao e a Maria")
end