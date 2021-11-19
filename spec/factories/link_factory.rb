FactoryBot.define do
  factory :link do
    external_url { Faker::Internet.url(scheme: 'https') }
    sequence(:title) { |n| "title#{n}" }
  end
end
