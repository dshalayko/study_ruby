class Employee
  attr_reader :name, :salary

  def name=(name)
    if name == ''
      raise "name can't be blank"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "a salary of #{salary} is not valid"
    end
    @salary = salary
  end

  def initialize (name = "Anonymous", salary = 0.0)
    self.name = name
    self.salary = salary
  end

  def print_pay_stub
    puts "name: #{name}"
    pay_for_stub = (salary / 365.0) * 14
    formated_pay = format('%.2f', pay_for_stub)
    puts "pay this period: #{formated_pay}"
  end
end