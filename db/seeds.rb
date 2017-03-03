# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# User.create(email: "user1@user.com", password: 'JDjLfuQJZAkduSfP1Q7MwO1JUfOVHK26JVJ4q68zdM9EHbfWD6jr2')
user = User.create! :email => 'john@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'

  goals = Goal.create([{amount: 1000, name: 'Nepalese Trek', start_date: '01/01/2017', target_date: '01/12/2017', user_id: 1},
    {amount: 200, name: 'Coure', start_date: '01/03/2017', target_date: '01/08/2017', user_id: 1}])


incomes = Income.create([{ amount: 100, name:'aaaa', date: '01/01/2017', user_id: 1 },
    { amount: 70, name:'mmmm', date: '01/02/2017', user_id: 1},
    { amount: 60, name:'nnnn', date: '01/03/2017', user_id: 1},
    { amount: 70, name:'oooo', date: '01/04/2017', user_id: 1},
    { amount: 60, name:'pppp', date: '01/05/2017', user_id: 1},
    { amount: 158, name:'qqqq', date: '01/06/2017', user_id: 1},
    { amount: 250, name:'rrrr', date: '01/07/2017', user_id: 1},
    { amount: 250, name:'ssss', date: '01/08/2017', user_id: 1},
    { amount: 52, name:'tttt', date: '01/09/2017', user_id: 1},
    { amount: 50, name:'uuuu', date: '01/10/2017', user_id: 1},
    { amount: 48, name:'vvvv', date: '01/11/2017', user_id: 1},
    { amount: 46, name:'wwww', date: '01/12/2017', user_id: 1}])


   expenditures = Expenditure.create([{amount: 100, name: 'aaaa', date: '31/01/2017', user_id: 1 },
     {amount: 50, name: 'bbbb', date: '28/02/2017', user_id: 1},
     {amount: 60, name: 'cccc', date: '31/03/2017', user_id: 1},
     {amount: 70, name: 'dddd', date: '30/04/2017', user_id: 1},
     {amount: 80, name: 'eeee', date: '31/05/2017', user_id: 1},
     {amount: 90, name: 'ffff', date: '30/06/2017', user_id: 1},
     {amount: 100, name: 'hhhh', date: '31/07/2017', user_id: 1},
     {amount: 110, name: 'iiii', date: '31/08/2017', user_id: 1},
     {amount: 120, name: 'jjjj', date: '30/09/2017', user_id: 1},
     {amount: 130, name: 'kkkk', date: '31/10/2017', user_id: 1},
     {amount: 90, name: 'llll', date: '30/11/2017', user_id: 1},
     {amount: 105, name: 'xxxx', date: '31/12/2017', user_id: 1}])

  projections = Projection.create([{projected_monthly_income: 150, projected_monthly_expenditure:130, start_date:'28/02/2017',user_id: 1 },
      {projected_monthly_income: 250, projected_monthly_expenditure:180, start_date:'28/04/2017',user_id: 1 }])
