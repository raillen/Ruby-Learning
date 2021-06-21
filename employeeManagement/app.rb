require_relative 'entities/employee'
require_relative 'entities/outsourced_employee'
require_relative 'entities/db_employee'
require_relative 'utils/clear'

print 'Enter the number of employess: '
quant = gets.to_i

while quant.zero?
  print 'Enter the number of employess: '
  quant = gets
end

quant.times do |i|
  clear
  puts "Employee #{i + 1} of #{quant}\n\n"

  print 'Is OutSourced? (y/n): '
  confirm = gets.chomp.downcase

  print 'Name: '
  name = gets.chomp!

  print 'Hours: '
  hours = gets.to_i

  while hours.zero?
    print 'Hours: '
    hours = gets.to_i
  end

  print 'Value per hour: '
  vph = gets.to_f

  while vph.zero?
    print 'Value per hour: '
    vph = gets.to_f
  end

  if confirm.chr == 'y'
    print 'Additional charge: '
    add_charge = gets.to_f

    while add_charge.zero?
      print 'Additional charge: '
      add_charge = gets.to_f
    end

    EmployeeDatabase.add_employee(OutsourcedEmployee.new(name, hours, vph, add_charge))
  else
    EmployeeDatabase.add_employee(Employee.new(name, hours, vph))
  end
end

puts '---- List of Employees ----'
puts EmployeeDatabase.to_s
