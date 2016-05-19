require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'Creates a new products' do
    product = FactoryGirl.build_stubbed(:product)
    expect(product.name).to eq('Apple iPhone 6S Plus')
    expect(product.category.name).to eq('Mobile Phones')
    expect(product.brand.name).to eq('Apple')
  end
end
