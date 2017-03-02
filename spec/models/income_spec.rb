require 'rails_helper'


describe Income, type: :model do

  it "creates income with user id" do

  user = User.create(email: "test@test.com", password: "testtest", password_confirmation: "testtest")

  income = Income.create(amount: 100, name: "Salary", user_id: user.id)

  expect(income.user_id).to eq user.id

  end


end
