require 'purchases_collection'

describe PurchasesCollection do
  subject(:purchases_collection) { described_class.new }

  it 'starts with an empty array of purchases' do
    expect(purchases_collection.purchases).to be_empty
  end
end
