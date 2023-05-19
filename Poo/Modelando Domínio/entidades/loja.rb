require_relative "produtos"

class Loja
  def self.comprar produto
    produto.remove()
    "Você comprou o produto #{produto.nome} pelo valor de #{produto.preco}."
  end
end
