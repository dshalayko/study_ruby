class Mage
  attr_accessor :name, :spell

  def enchat(target)
    puts "#{@name} casts #{@spell} on #{target.name}!"
  end
end
