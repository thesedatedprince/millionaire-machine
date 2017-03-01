require 'rails_helper'

feature 'adding incomes' do
  before { User.create email: 'test3@test.com' }

  scenario 'allow user to add a  using a form' do
     visit '/dashboard'
     # click_link income/income
     #steps to get to point of adding item
     click_link 'Add income item'
     fill_in "Name", with: "salary"
     fill_in "Amount", with: 5000
     fill_in "Transaction Date", with: '01/03/2017'
     fill_in "Actual", with: true
     click_button 'Submit income'

     expect(current_path).to eq '/dashboard'
     expect(page).to have_content('salary')
  end

    scenario 'allow user to add a second income using a form' do
       visit '/dashboard'
       # click_link income/income
       #steps to get to point of adding item
       click_link 'Add income item'
       fill_in "Name", with: "alimony"
       fill_in "Amount", with: 3000
       fill_in "Transaction Date", with: '01/03/2017'
       fill_in "Actual", with: true
       click_button 'Submit income'

       expect(current_path).to eq '/dashboard'
       expect(page).to have_content('alimony')
    end
