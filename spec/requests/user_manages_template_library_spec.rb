require 'spec_helper'

feature 'User can manage translation library' do
  scenario 'Viewing the library' do
    visit root_path
    expect(page).to have_content("Welcome to the translation library")
  end

  scenario 'Adds a translation to the library' do
    visit root_path
    click_link 'Add Translation'
    fill_in 'Database', with: 'Teradata'
    click_button 'Add to library'
    
    within('#library') do
      expect(page).to have_content('Teradata')
    end

  end
end

