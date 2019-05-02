lines = []
File.open("voices.txt") do |review_file|
  lines = review_file.readlines
end

voices = Hash.new(0)
lines.each do |line|
  name = line.chomp
  name.upcase!
  voices[name] += 1
end

voices.each do |name, voice|
  p "#{name} : #{voice}"
end


def volume(options)
  options[:width] * options[:height] * options[:depth]
end

result = volume(width:10, depth:2.5, height:5)
puts "Volume is #{result}"
