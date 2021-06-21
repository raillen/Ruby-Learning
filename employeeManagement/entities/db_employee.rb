# classe para simular um banco de dados
class EmployeeDatabase
  @employes = []

  # método estático em ruby
  def self.add_employee(employee)
    @employes.push(employee)
  end

  def self.to_s
    if @employes.empty?
      'There\'s no employees registered...'
    else
      @employes.each{|e| e.to_s + "\n"}
    end
  end
end