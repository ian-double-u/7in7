class Numeric 
	def inches
		self
	end

	def feet
		self * 12.inches
	end

	def yards
		self * 3.feet
	end

	def miles
		self * 5280.feet
	end

	def back
		self * -1
	end

	def forward
		self
	end
end

puts 10.miles.back
puts 2.feet.forward

class Roman
	# does this override method_missing just for this class??
	def self.method_missing name, *args 
		roman = name.to_s
		roman.gsub!("IV", "IIII")
		roman.gsub!("IX", "VIIII")
		roman.gsub!("XL", "XXXX")
		roman.gsub!("XC", "LXXXX")

		(roman.count("I") + 
		 roman.count("V") * 5 +
		 roman.count("X") * 10 +
		 roman.count("L") * 50 +
		 roman.count("C") * 100)
	end
end

puts
puts Roman.X
puts Roman.XC
puts Roman.XII
puts Roman.CX

class ActAsCsv
	def read
		file = File.new(self.class.to_s.downcase + ".txt")
		@headers = file.gets.chomp.split(", ")

		file.each do |row|
			@result << row.chomp.split(", ")
		end
	end

	def each(&block)
        @result.each(&block)
    end

	def headers
		@headers
	end

	def csv_contents
		@result
	end

	def initialize
		@result = []
		read
	end

	def self.method_missing name, *args 
		col = name.to_s
		self[@headers.index(col)]
	end
end

class RubyCsv < ActAsCsv
end

m = RubyCsv.new # looks for file called rubycsv.txt
puts
puts m.headers.inspect
puts m.csv_contents.inspect

puts 
puts m.each { |r| puts r.one }
