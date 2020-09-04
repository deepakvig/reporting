FactoryBot.define do
  factory :job do
    name { Faker::Job.title }
  end
end
