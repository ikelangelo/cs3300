
#makes the password and email combo for testing purposes
FactoryBot.define do
    factory :user do
      id {1}
      email  {"testAddr@gmail.com"}
      password  {"password123"}
      
    end
  end