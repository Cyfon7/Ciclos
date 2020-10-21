def gen (numero)
    if numero != 0
        letras="a"
        resultado = ""
        numero.times do
            resultado += letras
            if letras == "z"
                letras = "a"
            else
                letras = letras.next
            end
        end
        resultado
    else
        puts "Error!! Debe ingresar cantidad"
    end
end

puts gen(ARGV[0].to_i)