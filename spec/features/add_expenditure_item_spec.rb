require 'rails_helper'

feature 'adding expenditures' do
  before { User.create email: 'test3@test.com' }

  scenario 'allow user to add a expenditure using a form' do
     visit '/dashboard'
     # click_link income/expense
     #steps to get to point of adding item
     click_link 'Add expense item'
     fill_in "Name", with: "meal out"
     fill_in "Amount", with: 50
     fill_in "Transaction Date", with: '01/03/2017'
     fill_in "Actual", with: true
     click_button 'Submit expenditure'

     expect(current_path).to eq '/dashboard'
     expect(page).to have_content('meal out')
  end

    scenario 'allow user to add a second expenditure using a form' do
       visit '/dashboard'
       # click_link income/expense
       #steps to get to point of adding item
       click_link 'Add expense item'
       fill_in "Name", with: "booze up"
       fill_in "Amount", with: 30
       fill_in "Transaction Date", with: '01/03/2017'
       fill_in "Actual", with: true
       click_button 'Submit expenditure'

       expect(current_path).to eq '/dashboard'
       expect(page).to have_content('booze up')
    end
