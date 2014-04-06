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
   
    #visit columns_path
    
    #expect(page).to have_content('pg_catalog')
  end

  scenario 'Processing schema' do
    require 'csv'

    file_path = "/Users/Nick/Develop/DaDbDc/notes/postgres_sample.csv"
    infile = File.new(file_path)
    Loader.upload(infile)
    visit loaders_path
    
    #save_and_open_page
    expect(page).to have_content('pg_catalog')

    loader = Loader.all
    expect(loader.count).to eq(5)

    loader.each do |load|
      server = Server.find_or_create_by_name(load[:Server])  

    end

  end

end
