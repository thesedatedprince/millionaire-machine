require 'rails_helper'

feature 'Incomes' do

    context "when user is signed up/in" do
        scenario 'he/she can add income' do
          sign_up
          click_link 'Add Income'
          fill_in 'Amount', with: '100'
          fill_in 'Name', with: 'Salary'
          fill_in 'Date', with: '28-02-2017'
          click_button 'Add Entry'
          expect(page).to have_content 'Salary'
          expect(current_path).to eq '/dashboards'
        end
    end

    context "when user is not signed up/in" do
        scenario 'he/she cannot add income' do
          visit '/'
          expect(page).to_not have_link 'Add Income'
        end
    end

end
