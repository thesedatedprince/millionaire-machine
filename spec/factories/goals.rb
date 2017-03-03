factory :goal do |f|
  f.amount { Faker::Goal.amount }
  f.name { Faker::Goal.name }
  f.start_date { Faker::Goal.start_date }
  f.target_date { Faker::Goal.target_date }
  f.user_id { Faker::Goal.user_id  }
goal = Goal.create([{amount: 1000, name: 'Nepalese Trek', start_date: '01/01/2017', target_date: '01/12/2017', user_id: 1}])
  factory :invalid_user, parent: :user do |f|

  end
