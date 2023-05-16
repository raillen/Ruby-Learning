pow_nums = []

1..3.times do |i|
  print "Insira o #{i} número inteiro: "
  num = gets.chomp!.to_i

  pow_nums.push num.pow(3)
end

puts pow_nums
