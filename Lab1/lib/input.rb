class Input
  def read_value
    print 'Enter temperature: '
    gets.to_f
  end

  def read_scale
    loop do
      puts 'Enter [C, K, F]:'
      inpt = gets.chomp
      return inpt if (inpt == 'C') || (inpt == 'K') || (inpt == 'F')

      puts 'Error!'
    end
  end
end
