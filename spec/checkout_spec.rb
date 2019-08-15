require './lib/checkout'
describe Checkout do
  describe '#scan' do
    it 'can scan items' do
      expect(subject.scan("milk")).to eq(2)
    end
  end
  describe '#total' do
    it 'can output total of items scanned' do
      subject.scan("milk")
      subject.scan("bread")
      expect(subject.total).to eq(5)
    end
  end
end
