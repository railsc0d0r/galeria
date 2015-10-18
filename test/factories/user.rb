# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence :username do |n|
      "myLogin#{n}"
    end
    sequence :email do |n|
      "my_mail#{n}@my_tld_domain.net"
    end
    password "secret123456789"
    password_confirmation "secret123456789"
    activated true
  end
end
