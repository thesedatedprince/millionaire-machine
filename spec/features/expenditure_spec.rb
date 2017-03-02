require 'rails_helper'

feature 'Expenditures' do
  # context 'not  added' do
  #   scenario 'no expenditures added' do
  #     visit '/'
  #     expect(page).to have_content 'No Expenditures Added'
  #   end
  #   scenario 'should display a link to add expenditure' do
  #     visit '/'
  #     click_link 'Add Expenditure'
  #     fill_in 'Amount', with: '100'
  #     fill_in 'Name', with: 'Rent'
  #     fill_in 'Date', with: '28-02-2017'
  #     click_button 'Add Entry'
  #     expect(page).to have_content 'Rent'
  #     expect(current_path).to eq '/'
  #   end
  # end

  context "when user is signed up/in" do
      scenario 'he/she can add expenditure' do
        sign_up
        click_link 'Add Expenditure'
        fill_in 'Amount', with: '100'
        fill_in 'Name', with: 'Rent'
        fill_in 'Date', with: '28-02-2017'
        click_button 'Add Entry'
        expect(page).to have_content 'Rent'
        expect(current_path).to eq '/dashboards'
      end
  end

  context "when user is not signed up/in" do
      scenario 'he/she cannot add income' do
        visit '/'
        expect(page).to_not have_link 'Add Expenditure'
      end
  end


end
