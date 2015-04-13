require 'embiggener'

RSpec.describe Embiggener do
  describe '#URI' do
    it 'returns an Embiggener::URI' do
      uri = described_class::URI('http://www.altmetric.com')

      expect(uri).to be_a(described_class::URI)
    end

    it 'accepts an existing Embiggener::URI' do
      uri = described_class::URI.new('http://www.altmetric.com')

      expect(described_class::URI(uri)).to be_a(described_class::URI)
    end
  end
end