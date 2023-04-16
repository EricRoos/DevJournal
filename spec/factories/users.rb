FactoryBot.define do
  factory :user do
    email { "#{SecureRandom.uuid}@test.com" }
    uuid { SecureRandom.uuid }
    source { "local" }
  end
end
