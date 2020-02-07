class Board
  def llenar(tablero, tamano_nuevo)
    (0..tamano_nuevo-1).each do |i|
      cell = rand(0..1)
        #if cell == 1 
            #cell = "█"
        #elsif cell == 0
            #cell = "■"
        #end
        tablero[i] = cell
    end
    end

    def imprimir(tablero, tamano, tamano_nuevo)
        contador = 1 
        (0..tamano_nuevo-1).each {|i|
        print tablero[i]
        while (((i+1) / tamano) == contador)
            puts
            contador += 1
        end
        }
    contador = 1
    #Cerrando def	 	 
    end
end