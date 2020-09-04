FactoryBot.define do
  factory :applicant do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    website { Faker::Internet.url }
    cover_letter { Faker::Lorem.paragraph }
    job { build(:job) }
  end
end
