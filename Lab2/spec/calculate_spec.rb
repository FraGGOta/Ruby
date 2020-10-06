require './lib/calculate'
require './lib/read_file'

require 'csv'

RSpec.describe Calculate do
  describe '.Calculate' do
    context 'min' do
      a = MyFile.new
      arr = a.read_file
      input = Calculate.new(arr)
      it { expect(input.search_min(1)).to eq 66.3 }
    end

    context 'average' do
      a = MyFile.new
      arr = a.read_file
      input = Calculate.new(arr)
      it { expect(input.average(1)).to eq 78.95 }
    end

    context 'dispersion' do
      a = MyFile.new
      arr = a.read_file
      input = Calculate.new(arr)
      it { expect(input.dispersion(1, input.average(1))).to eq 228.88 }
    end
  end
end
