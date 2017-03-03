require 'rails_helper'

feature 'goals' do
  context 'no goals have been added' do
    scenario 'new user should start with no goal' do
      sign_up
      visit '/dashboards'
      expect(page).to have_content 'No goals yet'
      expect(page).to have_link 'Add Goal'
    end
  end


    scenario 'user should be able to add a new goal' do
      sign_up
      visit '/dashboards'
      click_link 'Add Goal'
      fill_in('Amount', with: 1500)
      fill_in('Name', with: 'ski trip')
      fill_in('Start date', with: '12/07/2017')
      fill_in('Target date', with: '14/07/2017')
      click_button('Submit goal')

      expect(page).to have_content '1500'
      expect(page).to have_content 'ski trip'
      expect(page).to have_content '12-07-17'
      expect(page).to have_content '14-07-17'


      expect(page).not_to have_content 'No goals yet'
    end


  context 'goals have been added' do
    scenario 'user should not be able to add a second goal' do
      sign_up
      visit '/dashboards'
      click_link 'Add Goal'
      fill_in('Amount', with: 1500)
      fill_in('Name', with: 'ski trip')
<<<<<<< HEAD
      fill_in('Start date', with: '16/02/2017')
      fill_in('Target date', with: '16/02/2017')
=======
      fill_in('Start date', with: '12/07/2017')
      fill_in('Target date', with: '14/07/2017')
>>>>>>> a2eea5d7f2f577ba90e15d1143a4c1bf32b530ba
      click_button('Submit goal')
      click_link 'Add Goal'
      fill_in('Amount', with: 1400)
      fill_in('Name', with: 'vespa')
<<<<<<< HEAD
      fill_in('Start date', with: '16/02/2017')
      fill_in('Target date', with: '16/02/2017')
=======
      fill_in('Start date', with: '15/07/2017')
      fill_in('Target date', with: '17/07/2017')
>>>>>>> a2eea5d7f2f577ba90e15d1143a4c1bf32b530ba
      click_button('Submit goal')
      expect(page).to have_content "Only permitted to store one goal"
      expect(page).not_to have_content 'vespa'
      expect(page).not_to have_content '1400'
      expect(page).not_to have_content '15/07/2017'
      expect(page).not_to have_content '17/07/2017'

    end
  end

end
