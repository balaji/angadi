require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'has parent categories' do
    mobile_phone_category = FactoryGirl.create(:mobile_phones)
    expect(mobile_phone_category.name).to eq('Mobile Phones')
  end
end
