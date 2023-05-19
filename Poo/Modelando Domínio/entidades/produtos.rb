class Produto
  attr_accessor :nome
  attr_reader :quant, :preco

  def initialize nome, preco, quant
    @nome = nome
    @preco = sprintf("%.2f", preco)
    @quant = quant
  end

  def remove
    @quant -= 1 if quant > 0
  end

  def add
    @quant+=1
  end

  def to_s
    "Nome: #{@nome}\nPreço: #{@preco}\nQuantidade: #{@quant}"
  end
end

# class ProdutoDatabase
#   @@produtos = []

#   def self.add_produto produto
#     @@produtos.push produto
#   end

#   def self.remove_produto produto
#     @@produtos.delete_if do |pd|
#       pd.nome == produto.nome
#     end
#   end

#   def self.list_produtos
#     @@produtos
#   end
# end
