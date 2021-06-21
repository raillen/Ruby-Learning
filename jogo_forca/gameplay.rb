require 'byebug'

class JogoDaForca

  attr_reader :palavra, :tentativas

  def initialize(tentativas, palavra = '')
    @tentativas = tentativas
    @palavra = palavra.downcase
  end

  def gameplay

    resultado = []

    @tentativas.times do |t|
      system('cls') || system('clear')

      puts '--- Jogo da Forca ---'.center(20)

      print resultado if resultado.length > 0

      print "\nDigite uma letra: "
      letra = gets.chomp

      if @palavra.split('').each_index do |i|
        resultado[i] = palavra[i] if palavra[i] == letra end
      end

      resultado_str = resultado.join('')
      
      if @palavra.eql? resultado_str
        system('cls') || system('clear')
        return "Parabéns, Você acertou!\nA palavra é: #{resultado_str.upcase}!" 
      end
    end
    system('cls') || system('clear')
    "Não foi dessa vez, tente outra!\nA palavra era #{@palavra.upcase}"
  end

end