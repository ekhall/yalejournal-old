FactoryGirl.define do
  factory :user do
    username  { "MyUser" }
    email     { "myemail@email.com" }
    password { "mypassword" }
    encrypted_password { User.new.send(:password_digest, 'mypassword') }
  end
end
