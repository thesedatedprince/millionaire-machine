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
      fill_in('Amount', with: '1500')
      fill_in('Name', with: 'ski trip')
      fill_in 'Start date', with: '28-02-2017'
      fill_in 'Target date', with: '28-02-2017'
      click_button('Submit goal')
      expect(page).to have_content 'ski trip'
      expect(page).not_to have_content 'No goals yet'
    end


  context 'goals have been added' do
    scenario 'user should not be able to add a second goal' do
      sign_up
      visit '/dashboards'
      click_link 'Add Goal'
      fill_in('Amount', with: '1500')
      fill_in('Name', with: 'ski trip')
      fill_in 'Start date', with: '28-02-2017'
      fill_in 'Target date', with: '28-02-2017'
      click_button('Submit goal')
      click_link 'Add Goal'
      fill_in('Amount', with: '1500')
      fill_in('Name', with: 'vespa')
      fill_in 'Start date', with: '28-02-2017'
      fill_in 'Target date', with: '28-02-2017'
      click_button('Submit goal')
      expect(page).to have_content "Only permitted to store one goal"
      expect(page).not_to have_content 'vespa'
    end
  end

  context 'User can not leave field blank' do
    scenario 'User cannot leave Name field blank' do
      sign_up
      click_link 'Add Goal'
      fill_in 'Amount', with: '100'
      fill_in 'Name', with: ''
      fill_in 'Start date', with: '28-02-2017'
      fill_in 'Target date', with: '28-02-2017'
      click_button 'Submit goal'
      expect(page).to_not have_content '28-02-2017'
      expect(current_path).to eq '/dashboards'
  end

  scenario 'User cannot leave Amount field blank' do
    sign_up
    click_link 'Add Goal'
    fill_in 'Amount', with: ''
    fill_in 'Name', with: 'Holiday'
    fill_in 'Start date', with: '28-02-2017'
    fill_in 'Target date', with: '28-02-2017'
    click_button 'Submit goal'
    expect(page).to_not have_content 'Holiday'
    expect(current_path).to eq '/dashboards'
end

scenario 'User cannot leave Date field blank' do
  sign_up
  click_link 'Add Goal'
  fill_in 'Amount', with: '100'
  fill_in 'Name', with: 'Holiday'
  fill_in 'Start date', with: ''
  fill_in 'Target date', with: ''
  click_button 'Submit goal'
  expect(page).to_not have_content 'Holiday'
  expect(current_path).to eq '/dashboards'
end
end
end
