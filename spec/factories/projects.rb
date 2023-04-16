FactoryBot.define do
  factory :project do
    user
    title { "MyString" }
    description { "MyText" }
  end
end
