FactoryGirl.define do

  factory :user_bart, :class => User do
    name "Bart Simpson"
    email "bart@simpson.com"
    age 12
    password "dirty_boy"
    password_confirmation "dirty_boy"
    encrypted_password BCrypt::Password.create("dirty_boy", :cost => 10)
  end

  factory :user_lisa, :class => User do
    name "Lisa Simpson"
    email "lisa@simpson.com"
    age 10
    password "smart_girl"
    password_confirmation "smart_girl"
    encrypted_password BCrypt::Password.create("smart_girl", :cost => 10)
  end

end


