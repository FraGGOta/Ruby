load 'Lab2/lib/calculate.rb'
load 'Lab2/lib/input.rb'

class Main
  def read_file
    file = File.new('Lab2/lib/stat.csv')
    file.readlines
  end

  def main
    arr = read_file
    value = Input.new
    choice = value.input_choice
    input = Calculate.new

    case choice
    when 'max'
      puts input.search_max(arr)
    when 'min'
      puts input.search_min(arr)
    when 'avg'
      puts input.calculate_average(arr).round(2)
    when 'disp'
      puts input.calculate_correct_sample_variance(arr).round(2)

    end
  end
end

a = Main.new
a.main
