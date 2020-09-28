require './lib/converter'

RSpec.describe Converter do
  describe '#Converts' do
    it 'Convert from C to F' do
      expect(Converter.new.convert(35, 'C', 'F')).to eq 95
    end

    it 'Convert from C to K' do
      expect(Converter.new.convert(35, 'C', 'K')).to eq 308.15
    end

    it 'Convert from K to C' do
      expect(Converter.new.convert(35, 'K', 'C').round(2)).to eq(-238.15)
    end

    it 'Convert from K to F' do
      expect(Converter.new.convert(35, 'K', 'F')).to eq(-396.67)
    end

    it 'Convert from F to C' do
      expect(Converter.new.convert(35, 'F', 'C').round(2)).to eq 1.67
    end

    it 'Convert from F to K' do
      expect(Converter.new.convert(35, 'F', 'K').round(2)).to eq 274.82
    end
  end
end
