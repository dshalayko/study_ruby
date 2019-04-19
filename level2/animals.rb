class Animal
  attr_reader :name, :age

  def name=(new_value)
    if new_value == ""
      raise "name can't be blank!"
    end
    @name = new_value

  end

  def age=(new_value)
    if new_value < 0
      raise "An age of #{new_value} is not valid"
    end
    @age = new_value
  end

  def report_age
    puts "#{@name} is #{@age} years old"
  end

  def talk
    puts "#{@name}"
  end

  def move(distation)
    puts "Running to the #{distation}"
  end

  def to_s
    "The name #{@name} , Age #{@age}"
  end

end

class Bird < Animal
  def talk
    puts "Crip! Crip!"
  end

  def move(distation)
    puts "Flying to the #{distation}"
  end
end

class Dog < Animal

  def talk
    puts "Bark!"
  end

end
class Cat < Animal
  def talk
    puts "Meow!"
  end

end

bird = Bird.new
dog = Dog.new
cat = Cat.new

bird.move("tree")
dog.talk
bird.talk
cat.move("house")

fido = Dog.new
fido.name = "fido"
fido.age = 2
fido.report_age
puts fido