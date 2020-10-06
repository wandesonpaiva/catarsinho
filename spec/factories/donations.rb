FactoryBot.define do
  factory :donation do
    value { 50 }
    project
    user
  end
end
