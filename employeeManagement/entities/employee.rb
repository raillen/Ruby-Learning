# classe principal
class Employee
  attr_reader :name, :hours, :value_per_hour

  def initialize(name, hours, value_per_hour)
    @name = name
    @hours = hours
    @value_per_hour = value_per_hour
  end

  def payment
    hours * value_per_hour
  end

  def to_s
	"Name: #{name}\nPayment: #{payment}"
  end
end
