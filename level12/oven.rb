class OvenOfFError < StandardError
end

class OvenEmptyError < StandardError
end

class SmallOven
  attr_accessor :contents

  def turn_on
    puts "Turning oven on"
    @state = "on"
  end

  def turn_off
    puts "Turning oven off"
    @state = "off"
  end

  def bake
    unless @state == "on"
      raise OvenOfFError, "You need turn the oven on firts!"
    end
    if @contents == nil
      raise OvenEmptyError, "There's nothing in the oven!"
    end
    "golden-brown #{contents}"
  end
end

dinner = ['turkey', nil, 'pie']
oven = SmallOven.new
oven.turn_on
dinner.each do |item|
  begin
    oven.contents = item
    puts "serving #{oven.bake}"
  rescue OvenEmptyError => error
    puts "Error #{error.message}"
  rescue OvenOfFError => error
    oven.turn_on
    retry
  ensure
    oven.turn_off
  end
end