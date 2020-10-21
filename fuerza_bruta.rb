contraseña = ARGV[0]
ARGV.clear             #Evita conflicto con metodo gets

if (contraseña != nil && !(contraseña.count("0-9") > 0))

    if (contraseña.length > 5)
        puts " - ADVERTENCIA - "
        puts "La siguiente operación podria interrumpir la operación normal de tu computador"
        puts "Desea continuar Y/N"
        opcion = gets.chomp
        while !(((opcion == "Y") || (opcion == "y")) || ((opcion == "N") || (opcion == "n")))
            opcion = gets.chomp
        end
    end

    if !((opcion == 'N') || (opcion == 'n'))
        fuerza = ""
        contraseña.length.times do
             fuerza += "a"
        end

        i = 1
        print "Calculando..."
        while ! ( contraseña === fuerza )
            fuerza = fuerza.next
            i += 1

            #Mensaje de espera
            if ( i%1000000 == 0 ) 
                print "\nCalculando"
            
            elsif ( i%10000 == 0)
                print "."
            end

            #Solo los valientes habilitan esta linea de codigo
            #puts "#{fuerza} intento #{i}"    
        end
        puts "\n#{i} intentos"
    else
        puts "Programa Finalizado por el Usuario"
    end
else
    puts "- ERROR - "
    puts "Programa Finalizado - Entrada de Datos es Invalida"
    puts "Se esperaban caracteres"
end