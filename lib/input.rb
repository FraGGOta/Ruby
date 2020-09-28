class Input
  def get_value
    print 'Enter temperature: '
    gets.to_f
  end

  def get_scale
    loop do
      puts 'Enter [C, K, F]:'
      inpt = gets.chomp
      if (inpt == 'C') || (inpt == 'K') || (inpt == 'F')
        return inpt
      else
        puts 'Error!'
      end
    end
  end
end
