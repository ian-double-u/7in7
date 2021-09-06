puts "Hi, my name is Bob.".gsub("Bob","Ian")

 /hay/ =~ "haystack"
puts /hay/.match("haystack")

x = 1..5

x.each { |y| puts y }

y = 'a'..'f'

y.each { |z| puts z }

z = "Hello, Ruby"

puts z[7..]

10.times { puts "Ian" }

(1..10).each { |i| puts "This is sentence number #{i}"}

# Bonus

=begin
puts "Random Number: #{rand(10)}" # rand(x) gives random int 0..x

puts "\nGuess a number: "
guess = gets
puts "You guessed #{guess}"
=end

ans = rand(100) + 1

puts "\nGuess a number between 1 and 100: "
guess = gets.to_i

if guess == ans
	puts "You guessed correct!"
else
	if ans > guess
		puts "You guessed too low."
	else
		puts "You guessed too high."
	end
end

puts "(The Answer was #{ans}.)"
