require 'rails_helper'

feature 'adding goal' do
  before { User.create email: 'test2@test.com' }

  scenario 'allow user to add a goal using a form' do
     visit '/dashboard'
     click_link 'Add Goal'
     fill_in "Name", with: "spa break"
     fill_in "Amount", with: 750
     fill_in "Target Date", with: '01/08/2017'
     fill_in "Start date", with: '01/03/2017'
     click_button 'Submit goal'

     expect(current_path).to eq '/dashboard'
     expect(page).to have_content('spa break')
  end

    scenario 'user cannot add a second goal using a form' do
      visit '/dashboard'
      click_link 'Add Goal'
      fill_in "Name", with: "ski trip"
      fill_in "Amount", with: 1250
      fill_in "Target Date", with: '01/12/2017'
      fill_in "Start date", with: '01/03/2017'
      click_button 'Submit goal'

      expect(current_path).to eq '/dashboard'
      expect(page).to have_content('you already have one goal, one goal at a time...')
   end

end
