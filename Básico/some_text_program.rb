print 'Digite seu nome e sobrenome: '
nome = gets.chomp!

print 'Digite sua idade: '
idade = gets.chomp!.to_i

puts "Nome completo: #{nome}\nIdade: #{idade}"
