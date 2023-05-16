require_relative 'auxiliar'
require 'cpf_cnpj'

install_cpf_gem()

print 'Digite seu CPF: '
cpf = gets.chomp!.to_i

puts check_cpf(cpf)
