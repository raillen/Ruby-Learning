require_relative 'gameplay'

puts 'Jogo da Forca'.center(20)

jogo = JogoDaForca.new(9, "Paralelo")

puts jogo.gameplay