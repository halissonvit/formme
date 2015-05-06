FactoryGirl.define do
  factory :poole_app_form do
    title { Faker::Lorem.sentence(3) }
    api_key 'api_key'
    api_secret 'api_secret'
    user { create(:user) }
  end
end
