FactoryGirl.define do
  factory :user do
    name     "Bryan Jenkins"
    email    "bryan@password.com"
    password "bryanj"
    password_confirmation "bryanj"
  end
end