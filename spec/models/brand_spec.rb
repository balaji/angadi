require 'rails_helper'

RSpec.describe Brand, type: :model do
  it 'Creates a new brand with category' do
    brand = FactoryGirl.create(:brand)
    expect(brand.name).to eq('Apple')
    expect(brand.category.name).to eq('Electronics')
  end
end
