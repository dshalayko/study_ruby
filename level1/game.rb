puts "what your name?"
name = gets.chomp
p "Hello, #{name} !"
number = rand (100)+1
num_guesses = 0
guesses_it = false

until num_guesses == 10 || guesses_it
	puts "You-ve got #{10-num_guesses} guesses left."
	puts "enter number"
	guesses = gets.to_i

	num_guesses +=1

	if guesses < number
		puts "oops. your guesses was LOW"
	elsif guesses > number
		puts "oops. your guesses wa HIGHT"
	elsif guesses == number
		puts "good job! #{name}!"
		guesses_it = true
	end
end

unless guesses_it
	puts "sorry. you didn't get my number. (it was #{number}.)"
end
