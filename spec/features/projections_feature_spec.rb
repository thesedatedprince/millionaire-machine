require 'rails_helper'

feature 'projections' do

  context 'logged in' do

    before do
      visit('/')
      click_link('Sign up')
      fill_in('Email', with: 'test@example.com')
      fill_in('Password', with: 'testtest')
      fill_in('Password confirmation', with: 'testtest')
      click_button('Sign up')
    end

    scenario 'user adds a projection' do
      visit '/'
      click_link 'Add Projection'
      expect(page.current_path).to eq '/projections/new'
      fill_in 'Projected monthly income', with: '100'
      fill_in 'Projected monthly expenditure', with: '50'
      fill_in 'Start date', with: '16/02/2017'
      click_button 'Create Projection'
      expect(page.current_path).to eq '/dashboards'
    end

    scenario 'user should not be able to add a second projection' do

      click_link 'Add Projection'
      expect(page.current_path).to eq '/projections/new'
      fill_in 'Projected monthly income', with: '100'
      fill_in 'Projected monthly expenditure', with: '50'
      fill_in 'Start date', with: '16/02/2017'
      click_button 'Create Projection'

      click_link 'Add Projection'
      expect(page.current_path).to eq '/projections/new'
      fill_in 'Projected monthly income', with: '150'
      fill_in 'Projected monthly expenditure', with: '50'
      fill_in 'Start date', with: '16/02/2017'
      click_button 'Create Projection'
      expect(page).to have_content "Only permitted to store one projection"
    end
  end

  context 'User Cannot leave fields blank' do
    scenario 'User cannot leave Projected monthly income field blank' do
      sign_up
      click_link 'Add Projection'
      fill_in 'Projected monthly income', with: ''
      fill_in 'Projected monthly expenditure', with: '50'
      click_button 'Create Projection'
      expect(page).to_not have_content '16-02-2017'
      expect(current_path).to eq '/dashboards'
  end
  scenario 'User cannot leave Projected monthly expenditure field blank' do
    sign_up
    click_link 'Add Projection'
    fill_in 'Projected monthly income', with: '150'
    fill_in 'Projected monthly expenditure', with: ''
    fill_in 'Start date', with: '16/02/2017'
    click_button 'Create Projection'
    expect(page).to_not have_content '16-02-2017'
    expect(current_path).to eq '/dashboards'
end
scenario 'User cannot leave Start date field blank' do
  sign_up
  click_link 'Add Projection'
  fill_in 'Projected monthly income', with: '150'
  fill_in 'Projected monthly expenditure', with: '50'
  fill_in 'Start date', with: ''
  click_button 'Create Projection'
  expect(page).to_not have_content '150'
  expect(current_path).to eq '/dashboards'
  end
end
  context 'not signed in' do
    scenario 'user looks for add projection button' do
      visit '/'
      expect(page).not_to have_link 'Add Projection'
    end
  end
end
