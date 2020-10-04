require_relative 'calculate'
require_relative 'input'
require_relative 'read_file'

class Main
  def main
    jopa = MyFile.new
    arr = jopa.read_file
    value = Input.new
    choice = value.input_choice
    input = Calculate.new

    case choice
    when 'max'
      puts input.search_max(arr)
    when 'min'
      puts input.search_min(arr)
    when 'avg'
      puts input.average(arr)
    when 'disp'
      puts input.dispersion(arr)

    end
  end
end

a = Main.new
a.main
