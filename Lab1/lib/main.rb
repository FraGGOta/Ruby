load 'Lab1/lib/input.rb'
load 'Lab1/lib/converter.rb'

class Main
  def main
    input = Input.new
    value = input.read_value
    scale = input.read_scale
    new_scale = input.read_scale

    conv = Converter.new
    result = conv.convert(value, scale, new_scale)

    puts "#{value}#{scale} = #{result}#{new_scale}"
  end
end

a = Main.new
a.main
