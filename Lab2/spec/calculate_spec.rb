require './lib/calculate'
require './lib/read_file'

require 'csv'

RSpec.describe Calculate do
  describe '.Calculate' do
    context 'max' do
      a = MyFile.new
      arr = a.read_file
      it { expect(Calculate.new.search_max(arr, 1)).to eq 119.9 }
    end

    context 'min' do
      a = MyFile.new
      arr = a.read_file
      it { expect(Calculate.new.search_min(arr, 1)).to eq 66.3 }
    end

    context 'average' do
      a = MyFile.new
      arr = a.read_file
      it { expect(Calculate.new.average(arr, 1)).to eq 78.95 }
    end

    context 'dispersion' do
      a = MyFile.new
      arr = a.read_file
      it { expect(Calculate.new.dispersion(arr, 1, Calculate.new.average(arr, 1))).to eq 228.88 }
    end
  end
end
