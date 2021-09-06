# By considering the terms in the Fibonacci sequence whose values do not
#   exceed four million, find the sum of the even-valued terms.

def next_fib_term(x,y) x + y end

fibs = [1,2]

while next_fib_term(fibs[-2],fibs[-1]) < 4000000
	fibs << next_fib_term(fibs[-2],fibs[-1])
end

puts "Ans = #{ fibs.select { |x| x % 2 == 0 }.collect.sum }"
