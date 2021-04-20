FactoryBot.define do
  factory :user do
    name { 'name' }
    email { 'user@email' }
    password { 'user_password' }
  end
end