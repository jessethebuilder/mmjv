FactoryGirl.define do
  sequence(:name){ |n| "Name#{n}" }

  factory :product do
    name

    factory :flower do
      product_type 'flower'
    end
  end

end