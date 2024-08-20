FactoryBot.define do
  factory :subject do
    name { Faker::Name.name_with_middle }
    postition { Faker::Number.between(from: 1, to: 100) }
    visible { false }
  end
end
