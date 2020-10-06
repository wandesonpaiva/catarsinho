# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { 'changeme' }
    password_confirmation { 'changeme' }
  end
end
