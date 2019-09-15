FactoryBot.define do
  factory :admin do
    login { "MyString" }
    email { Faker::Internet.unique.email }
    password { "123456789" }
  end
end
