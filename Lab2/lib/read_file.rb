require 'csv'

class MyFile
  def read_file
    CSV.read('lib/file.csv')
  end
end
