require 'spec_helper'

feature "User can manage schema" do
  scenario 'visiting columns' do
    visit columns_path 
  end
  scenario 'Uploading schema' do
    require 'csv'
    visit root_path
    click_link 'Upload Schema'
    file_path = "/Users/Nick/Develop/DaDbDc/notes/postgres_sample.csv"
    attach_file 'file', file_path
    click_button('Upload')
   
    visit columns_path
    
    expect(page).to have_content('pg_catalog')
    #save_and_open_page
  end
end
