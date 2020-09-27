class Input

	def self.get_value
		puts "Enter temperature:"
		return STDIN.gets.to_f
	end

	def self.get_scale 
		loop do
			puts "Enter [C, K, F]:"
			inpt = STDIN.gets.strip
			if inpt == "C" or inpt == "K" or inpt == "F"
				return inpt
			else
				puts "Error! Try again!"
			end
		end
	end
end

class Converter

	def self.convert(value, scale, new_scale)
		if scale == new_scale
			return nil
		end

		case scale
		when 'C'
			case new_scale
			when 'K'
				return value + 273.15
			when 'F'
				return value * 1.8 + 32
			end

		when "K"
			case new_scale
			when 'C'
				return value - 273.15
			when 'F'
				return value * 1.8 - 459.67
			end

		when "F"
			case new_scale
			when 'C'
				return (value - 32) / 1.8
			when 'K'
				return (value + 459.67) / 1.8
			end
		end
	end
end

class Main

	def self.main
		value = Input.get_value
		scale = Input.get_scale
		new_scale = Input.get_scale
		result = Converter.convert(value, scale, new_scale)

		puts "#{value}#{scale} = #{result}#{new_scale}"
	end
end

Main.main 
