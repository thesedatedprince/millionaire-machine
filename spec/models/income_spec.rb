require 'rails_helper'


describe Income, type: :model do

  it ' creates with an amount' do
  user = User.create! :email => 'jane@gmail.com', :password => 'tapsecret', :password_confirmation => 'tapsecret'
  income = Income.create([{ amount: 100, name:'aaaa', date: '01/01/2017', user_id:user.id }])
  expect (Income.last.amount == 100)
  #it { is_expected.to validate_presence_of :amount}
  end
end
