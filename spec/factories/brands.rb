require 'securerandom'
FactoryGirl.define do
  factory :brand do
    sequence(:id) { |_| SecureRandom.uuid }
    name 'Apple'
  end
end
