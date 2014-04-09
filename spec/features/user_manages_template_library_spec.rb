require 'spec_helper'

feature 'User can manage template library : ' do
  scenario 'Viewing the library' do
    visit root_path
    expect(page).to have_content("Templates")
  end

  scenario 'Adds a template to the library' do
    visit root_path
    click_link 'Add Template'
    #save_and_open_page 
    fill_in 'Platform', with: 'Teradata'
    fill_in 'Sample sql', with: 'Select * from Table;'
    fill_in 'Notes', with: 'These are notes'
    click_button 'Enter Template'
    
    within(:css, '#templates') do
      expect(page).to have_content('Teradata')
    end
  end

  scenario 'Views a template in the library' do
    visit root_path
    click_link 'Add Template'
    fill_in 'Platform', with: 'Teradata'
    click_button 'Enter Template'
    click_link("Teradata", :match => :first)
  end

   scenario 'Edits a template in the library' do
    visit root_path
    click_link 'Add Template'
    fill_in 'Platform', with: 'Teradata'
    click_button 'Enter Template'
    click_link 'Teradata'

    click_link 'Change template'
    fill_in 'Platform', with: 'Oracle'
    
    click_button 'Enter Template'
    #save_and_open_page
  end

  scenario 'Adds a schema to a template' do
    visit root_path
    click_link 'Upload Schema'
  end



end

