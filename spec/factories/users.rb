factory :user do |f|
  f.email { Faker::User.email}
  f.password { Faker::User.password}
  f.password_confirmation { Faker::User.password_confirmation}

  factory :invalid_user, parent: :user do |f|
    f.email nil
  end
