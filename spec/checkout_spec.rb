require './lib/items'
describe Items do
  it 'can respond to price method with argument' do
    expect(subject).to respond_to(:price).with(1).argument
  end
  it 'can take an argument' do

  end
end
