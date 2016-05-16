FactoryGirl.define do
  factory :product do
    sequence(:id) { |_| SecureRandom.uuid }
    name 'Apple iPhone 6S Plus'
    association :category, factory: :mobile_phones
    association :brand, factory: :brand
  end
end
