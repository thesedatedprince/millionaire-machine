require 'rails_helper'

feature 'Incomes' do
  context 'no incomes added' do
    scenario 'should display a link to add income' do
      visit '/incomes/new'

      click_link 'Add income'
      fill_in 'amount', with: '100'
      fill_in 'name', with: 'Salary'
      fill_in 'date', with: '28-02-2017'
      fill_in 'actual', with: 'true'
      fill_in 'frequency', with: 'weekly'
      click_button 'Add Entry'
      expect(page).to have_content 'Salary'
      expect(current_path).to eq '/dashboard'
    end

end
end
