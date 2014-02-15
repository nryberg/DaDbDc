require 'spec_helper'

feature 'User can manage template library : ' do
  scenario 'Viewing the library' do
    visit root_path
    expect(page).to have_content("Welcome to the template library")
  end

  scenario 'Adds a template to the library' do
    visit root_path
    click_link 'Add Template'
    fill_in 'Database', with: 'Teradata'
    click_button 'Add to Templates'
    
    within('#library') do
      expect(page).to have_content('Teradata')
    end

  end
end

