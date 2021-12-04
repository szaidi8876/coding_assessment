class CodingAssesment
	def self.above_below(array, integer)
		if ((!array.is_a? Array) && (!integer.is_a? Integer))
			raise ArgumentError.new("Incorrect data type passed for both Array and Integer arguments.")
		elsif !array.is_a? Array
			raise ArgumentError.new("Incorrect data type passed for Array argument.")
		elsif !integer.is_a? Integer
			raise ArgumentError.new("Incorrect data type passed for Integer argument.")
		end

		output = { above: 0, below: 0 }

		array.each do |element|
			if element > integer
				output[:above] += 1
			elsif element < integer
				output[:below] += 1
			end
		end

		return output
	end

	def self.string_rotation(string, integer)
		if ((!string.is_a? String) && (!integer.is_a? Integer))
			raise ArgumentError.new("Incorrect data type passed for both String and Integer arguments.")
		elsif !string.is_a? String
			raise ArgumentError.new("Incorrect data type passed for String argument.")
		elsif !integer.is_a? Integer
			raise ArgumentError.new("Incorrect data type passed for Integer argument.")
		end

		return string.chars.rotate(-integer).join
	end
end
