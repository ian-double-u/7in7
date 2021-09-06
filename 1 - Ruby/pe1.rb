# Find the sum of all the multiples of 3 or 5 below 1000.

z = (1..999).select{ |x| x % 3 == 0 or x % 5 == 0 }.collect

puts "Ans = #{z.sum}"