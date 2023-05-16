def install_cpf_gem
  check_cpf_gem = system("gem list -i cpf_cnpj")
  unless check_cpf_gem then system("gem install cpf_cnpj -v 0.2.1") end
    system('cls') or system('clear')
end

def check_cpf _cpf

  test_cpf = CPF.new _cpf

  if test_cpf.valid?
    "Seu CPF #{test_cpf.formatted} é válido."
  else
    'Seu CPF é inválido!'
  end

end
