require 'securerandom'
FactoryGirl.define do
  factory :category do
    sequence(:id) { |_| SecureRandom.uuid }

    factory :electronics do
      name 'Electronics'
    end

    trait :sub_category do
      name 'Mobile Phones'
      association :parent, factory: :electronics, strategy: :build
    end

    factory :mobile_phones, traits: [:sub_category]
  end
end
