class Vehicle
  attr_accessor :odometr, :gas_used

  def accelerate
    puts "floor it!"
  end

  def sound_horn
    puts "beep! beep!"
  end

  def steer
    puts "turn front 2 wheels."
  end

  def mileage
    @odometr / @gas_used
  end

end

class Car < Vehicle

end

class Truck < Vehicle
  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the turk bed."
    @cargo = contents
  end
end

class Motorcycle < Vehicle
  def steer
    puts "Turn front wheel"
  end
end

