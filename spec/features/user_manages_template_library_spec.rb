require 'spec_helper'

feature 'User can manage template library : ' do
  scenario 'Viewing the library' do
    visit root_path
    expect(page).to have_content("Welcome to the template library")
  end

  scenario 'Adds a template to the library' do
    visit root_path
    click_link 'Add Template'
    fill_in 'Platform', with: 'Teradata'
    fill_in 'Database name', with: 'PROD_V'
    fill_in 'Table name', with: 'My Table Name'
    fill_in 'Column name', with: 'My Column Name'
    fill_in 'Column type', with: 'My Column Type'
    fill_in 'Column format', with: 'My Column Format'
    fill_in 'Column precision', with: 'My Column Precision'
    fill_in 'Column scale', with: 'My Column Scale'
    click_button 'Add to Templates'
    
    within(:css, '#templates') do
      expect(page).to have_content('Teradata')
      expect(page).to have_content('PROD_V')
    end
  end

  scenario 'Views a template in the library' do
    visit root_path
    click_link 'Add Template'
    fill_in 'Platform', with: 'Teradata'
    click_button 'Add to Templates'
    click_link("Teradata", :match => :first)
  end

   scenario 'Edits a template in the library' do
    visit root_path
    click_link 'Add Template'
    fill_in 'Platform', with: 'Teradata'
    click_button 'Add to Templates'
    click_link("Teradata", :match => :first)

    click_button 'Change template'
  end

end

