require_relative 'employee'

class OutsourcedEmployee < Employee
  attr_reader :additional_charge

  def initialize(name, hours, value_per_hour, additional_charge)
    super(name, hours, value_per_hour)
    @additional_charge = additional_charge
  end

  def payment
    super + (@additional_charge * 1.10)
  end

  def to_s
	super + "\nAdditional Charge: #{@additional_charge}"
  end
end
