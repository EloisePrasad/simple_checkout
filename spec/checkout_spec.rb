require './lib/checkout'
describe Checkout do
  describe '#scan' do
    it 'can scan items' do
      items = double(:items)
      allow(items).to receive(:price).with("milk") { 2 }
      checkout = Checkout.new(items)
      expect(checkout.scan("milk")).to eq(2)
    end
  end
  describe '#total' do
    it 'can output total of items scanned' do
      items = double(:items)
      allow(items).to receive(:price).with("milk") { 2 }
      allow(items).to receive(:price).with("bread") { 3 }
      checkout = Checkout.new(items)
      checkout.scan("milk")
      checkout.scan("bread")
      expect(checkout.total).to eq(5)
    end
  end
end
