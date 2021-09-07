# Find out how to access files with and without code blocks. What is the benefit of the code block?
quotes = File.read("quotes.txt")
#puts quotes # gives single string

quote_list = quotes.split "\n"
puts quote_list[15] # array with one quote per entry

# How would you translate a hash into an array? Can you translate arrays to hashes?
#[[key, val], ... ]

# Can you iterate through a hash?
dict = {"animal" => "Dog", "name" => "Ian", "color" => "Purple"}

dict.keys.each { |k| puts "key: #{k}, val: #{dict[k]}" }

# You can use Ruby arrays as stacks. What other common data structures do arrays support?

# Print the contents of an array of sixteen numbers, four numbers at a time, using just each. Now, do the same with each_slice in Enumerable.
a = (1..16).collect

#a.each { |i| puts ... }

a.each_slice(4) { |a| puts a.join " " }

# The Tree class was interesting, but it did not allow you to specify a new tree with a clean user interface. Let the initializer accept a nested structure of hashes.

# Write a simple grep that will print the lines of a file having any occuring references of a phrase anywhere in that line.
puts
quote_list.each { |q| puts "#{q}\n\n" if q =~ /science/ }
