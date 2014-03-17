require 'spec_helper'

feature "User can manage schema" do
  scenario 'visiting columns' do
    visit columns_path 
  end
  scenario 'Uploading schema' do
    visit root_path
    visit upload_columns_path 
  end
end
