require './lib/calculate'
require './lib/read_file'

require 'csv'

RSpec.describe Calculate do
  describe '.Calculate' do
    context 'max' do
      a = MyFile.new
      arr = a.read_file
      it { expect(Calculate.new.search_max(arr)).to eq 50_000.0 }
    end

    context 'min' do
      a = MyFile.new
      arr = a.read_file
      it { expect(Calculate.new.search_min(arr)).to eq 2.0 }
    end

    context 'average' do
      a = MyFile.new
      arr = a.read_file
      it { expect(Calculate.new.average(arr)).to eq 4726.37 }
    end

    context 'dispersion' do
      a = MyFile.new
      arr = a.read_file
      it { expect(Calculate.new.dispersion(arr)).to eq 7_437_028_129.18 }
    end
  end
end
