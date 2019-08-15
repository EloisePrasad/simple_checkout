require './lib/items'
describe Items do
  it 'can respond to price method with argument' do
    expect(subject).to respond_to(:price).with(1).argument
  end
  describe '#price' do
    it 'can output price of item' do
    expect(subject.price("milk")).to eq(2)
    end
  end 
end
