require 'rails_helper'

feature 'Incomes' do
  context 'no incomes added' do
    scenario 'should display a link to add income' do
      visit '/'

      click_link 'Add Income'
      fill_in 'Amount', with: '100'
      fill_in 'Name', with: 'Salary'
      fill_in 'Date', with: '28-02-2017'
      fill_in 'Actual', with: 'true'
      fill_in 'Frequency', with: 'weekly'
      click_button 'Add Entry'
      expect(page).to have_content 'Salary'
      expect(current_path).to eq '/'
    end

end
end
