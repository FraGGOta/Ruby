require_relative 'calculate'
require_relative 'input'
require_relative 'read_file'

class Main
  def main
    size = MyFile.new
    arr = size.read_file

    value = Input.new
    choice = value.input_choice
    input = Calculate.new
    max_min(input, arr, choice)
    avg_disp(input, arr, choice)
  end

  def max_min(input, arr, choice)
    case choice
    when 'max'
      (1..arr.length - 1).each do |ibc|
        puts input.search_max(arr, ibc)
      end
    when 'min'
      (1..arr.length - 1).each do |ibc|
        puts input.search_min(arr, ibc)
      end
    end
  end

  def avg_disp(input, arr, choice)
    case choice
    when 'avg'
      (1..arr.length - 1).each do |ibc|
        puts input.average(arr, ibc)
      end
    when 'disp'
      (1..arr.length - 1).each do |ibc|
        avr_val = input.average(arr, ibc)
        puts input.dispersion(arr, ibc, avr_val)
      end
    end
  end
end

a = Main.new
a.main
