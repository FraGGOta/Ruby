require_relative 'calculate'
require_relative 'input'
require_relative 'read_file'

class Main
  def main
    size = MyFile.new
    @arr = size.read_file

    value = Input.new
    choice = value.input_choice
    input = Calculate.new(@arr)
    max_min(input, choice)
    avg_disp(input, choice)
  end

  def max_min(input, choice)
    case choice
    when 'max'
      (1..@arr.length - 1).each do |ibc|
        puts input.search_max(ibc)
      end
    when 'min'
      (1..@arr.length - 1).each do |ibc|
        puts input.search_min(ibc)
      end
    end
  end

  def avg_disp(input, choice)
    case choice
    when 'avg'
      (1..@arr.length - 1).each do |ibc|
        puts input.average(ibc)
      end
    when 'disp'
      (1..@arr.length - 1).each do |ibc|
        avr_val = input.average(ibc)
        puts input.dispersion(ibc, avr_val)
      end
    end
  end
end

a = Main.new
a.main
