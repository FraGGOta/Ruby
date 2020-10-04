require 'csv'

class MyFile
  def read_file
    CSV.read('lib/stat.csv')
  end
end
