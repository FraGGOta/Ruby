require './lib/calculate'
require './lib/read_file'

require 'csv'

RSpec.describe Calculate do
  describe '.Calculate' do
    context 'min' do
      a = MyFile.new
      arr = a.read_file
      input = Calculate.new(arr)
      it { expect(input.search_min(1)).to eq 64.9 }
    end

    context 'average' do
      a = MyFile.new
      arr = a.read_file
      input = Calculate.new(arr)
      it { expect(input.average(1)).to eq 4451.92 }
    end

    context 'dispersion' do
      a = MyFile.new
      arr = a.read_file
      input = Calculate.new(arr)
      it { expect(input.dispersion(1, input.average(1))).to eq 153_393_599.8 }
    end
  end
end
