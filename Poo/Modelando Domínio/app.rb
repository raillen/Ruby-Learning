require_relative "entidades/loja.rb"

panela = Produto.new "Panela de Pressão", 35.67, 15
puts Loja.comprar panela
