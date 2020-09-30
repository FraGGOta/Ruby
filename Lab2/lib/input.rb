class Input
  def input_choice
    loop do
      puts 'Enter [max, min, avg, disp]:'
      inpt = gets.chomp
      return inpt if (inpt == 'max') || (inpt == 'min') || (inpt == 'avg') || (inpt == 'disp')

      puts 'Error!'
    end
  end
end
