FactoryGirl.define do

  factory :article do
    sequence(:journal)    { |n| "Freaking great journal #{n}" }
    sequence(:name)       { |n| "Interesting article number #{n}" }
    trait :presented_past do
      presentation_date   { 3.days.ago }
    end
  end

