FactoryBot.define do
    factory :post do
        author { Faker::Internet.email }
        body { Faker::Lorem.paragraph }
    end
end