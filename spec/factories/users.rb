FactoryBot.define do
  factory :user do
    uuid { SecureRandom.uuid }
    source { "local" }
  end
end
