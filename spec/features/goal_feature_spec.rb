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
      fill_in('Start date', with: '16/02/2017')
      fill_in('Target date', with: '16/02/2017')
      click_button('Submit goal')
      expect(page).to have_content 'ski trip'
      expect(page).not_to have_content 'No goals yet'
    end


  context 'goals have been added' do
    scenario 'user should not be able to add a second goal' do
      sign_up
      visit '/dashboards'
      click_link 'Add Goal'
      fill_in('Amount', with: 1500)
      fill_in('Name', with: 'ski trip')
      fill_in('Start date', with: '16/02/2017')
      fill_in('Target date', with: '16/02/2017')
      click_button('Submit goal')
      click_link 'Add Goal'
      fill_in('Amount', with: 1500)
      fill_in('Name', with: 'vespa')
      fill_in('Start date', with: '16/02/2017')
      fill_in('Target date', with: '16/02/2017')
      click_button('Submit goal')
      expect(page).to have_content "Only permitted to store one goal"
      expect(page).not_to have_content 'vespa'
    end
  end

end
