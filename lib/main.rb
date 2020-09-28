load 'lib/input.rb'
load 'lib/converter.rb'

class Main
  def main
    input = Input.new
    value = input.get_value
    scale = input.get_scale
    new_scale = input.get_scale

    conv = Converter.new
    result = conv.convert(value, scale, new_scale)

    puts "#{value}#{scale} = #{result}#{new_scale}"
  end
end

a = Main.new
a.main
