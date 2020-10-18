# Quando necessitamos associar condições, e não valores, nós podemos recorrer ao cond/1 Isso é semelhante ao else if ou elsif de outras linguagens:

cond do
    2 - 2 == 1 ->
        IO.puts("Resultado Incorreto")
    2 * 2 == 4 -> 
        IO.puts("Resultado correto")
end

cond do
    1 + 1 == 0 -> IO.puts("Incorreto")
    true -> IO.puts("Correto")
        
end