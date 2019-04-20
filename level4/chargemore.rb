class Employee
  attr_reader :name

  def name=(name)
    if name == ''
      raise "name can't be blank"
    end
    @name = name
  end


  def initialize (name = "Anonymous")
    self.name = name
  end

  def print_name
    puts "name: #{name}"
  end

end

class SalariedEmployee < Employee

  attr_reader :salary

  def initialize (name = "Anonymous", salary = 0.0)
    super (name)
    self.salary = salary
  end

  def salary=(salary)
    if salary < 0
      raise "a salary of #{salary} is not valid"
    end
    @salary = salary
  end

  def print_pay_stub
    print_name
    pay_for_stub = (salary / 365.0) * 14
    formated_pay = format('%.2f', pay_for_stub)
    puts "pay this period: #{formated_pay}"
  end

end

class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week

  def self.security(name)
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  def initialize (name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
    super (name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def hourly_wage=(hourly_wage)
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    @hours_per_week = hours_per_week
  end

  def print_pay_stub
    print_name
    print_pay_stub = hours_per_week * hourly_wage * 2
    format_str = format('%.2f', print_pay_stub)
    puts "pay this period: #{format_str}"
  end

end

angela = HourlyEmployee.security("anna")
angela.print_pay_stub