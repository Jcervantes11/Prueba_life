class Rules
  
  def modify(tablero, tamano, tamano_nuevo)
  superior_izquierda = 0
  superior_derecha = 0  
  inferior_izquierda = 0 
  inferior_derecha = 0  
  tamano_menos_dos = (tamano - 2) 
  # Inicio de superior_izquierda 
    if tablero[1] == 1
      superior_izquierda += 1
    end
    if tablero[tamano] == 1
      superior_izquierda += 1
    end
    if tablero[tamano + 1] == 1
      superior_izquierda += 1
    end

    if tablero[0] == 0 
      if superior_izquierda == 3
        tablero[0] = 1
      end
    end

    if tablero[0] == 1    
      if superior_izquierda == 2 || superior_izquierda == 3 
        tablero[0] = 1
      elsif superior_izquierda < 2
        tablero[0] = 0
      elsif superior_izquierda > 3
        tablero[0] = 0
      end    
    end
  # Final de superior_izquierda

  # Inicio de superior_derecha
    if tablero[tamano - 2] == 1
      superior_derecha += 1
    end
    if tablero[(tamano*2) - 2] == 1
      superior_derecha += 1
    end
    if tablero[(tamano*2) - 1] == 1
      superior_derecha += 1
    end          

    if tablero[tamano - 1] == 0
      if superior_derecha == 3
        tablero[tamano - 1] = 1
      end
    end  

    if tablero[tamano - 1] == 1
      if superior_derecha == 2 || superior_derecha == 3
        tablero[tamano - 1] = 1
      elsif superior_derecha < 2
        tablero[tamano - 1] = 0
      elsif superior_derecha > 3
        tablero[tamano - 1] = 0
      end  
    end  
  # Final de superior_derecha  
  
  # Inicio de inferior_izquierda
    if tablero[tamano * (tamano_menos_dos)] == 1
      inferior_izquierda += 1
    end
    if tablero[(tamano * tamano_menos_dos) + 1] == 1
      inferior_izquierda += 1
    end
    if tablero[(tamano * tamano_menos_dos) + 1] == 1 
      inferior_izquierda += 1
    end 
    
    if tablero[tamano * (tamano - 1)] == 0
      if inferior_izquierda == 3
        tablero[tamano * (tamano - 1)] = 1
      end
    end  
    
    if tablero[tamano * (tamano - 1)] == 1
      if inferior_izquierda == 2 || inferior_izquierda == 3
        tablero[tamano * (tamano - 1)] = 1  
      elsif inferior_izquierda < 2
        tablero[tamano * (tamano - 1)] = 0 
      elsif inferior_izquierda > 3
        tablero[tamano * (tamano - 1)] = 0 
      end
    end     
  # Final de inferior_izquierda
  end
end        
    