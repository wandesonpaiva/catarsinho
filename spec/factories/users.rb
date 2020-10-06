# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :user do
    name { 'user' }
    email { 'user@email.com' }
    password { 'changeme' }
    password_confirmation { 'changeme' }
  end
end
