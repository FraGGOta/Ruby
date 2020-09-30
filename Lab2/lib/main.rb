load 'calculate.rb'
load 'input.rb'

class Main

  def read_file
    file = File.new('stat.csv')
    line = file.readlines
  end

  def main
    arr = read_file
    value = Input.new
    choice = value.input_choice 
    input = Calculate.new

    case choice
    when 'max'
      puts value = input.search_max(arr)
    when 'min'
      puts value = input.search_min(arr)
    when 'avg'
      puts value = input.calculate_average(arr).round(2)
    when 'disp'
      puts value = input.calculate_correct_sample_variance(arr).round(2)

    end
  end
end

a = Main.new
a.main