require_relative "board"
require_relative "rules" 
print "Tamaño del tablero: "
tamano = gets.chomp.to_i
tamano_nuevo = (tamano * tamano)
tablero = []

game_board = Board.new
game_rules = Rules.new
game_board.llenar(tablero, tamano_nuevo)
game_board.imprimir(tablero, tamano, tamano_nuevo)
puts
puts
game_rules.modify(tablero, tamano, tamano_nuevo)
game_board.imprimir(tablero, tamano, tamano_nuevo)
#game_board.imprimir(tablero, tamano, tamano_nuevo)
