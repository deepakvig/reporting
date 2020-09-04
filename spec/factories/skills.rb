FactoryBot.define do
  factory :skill do
    name { Faker::ProgrammingLanguage.name }
    applicant { build(:applicant) }
  end
end
