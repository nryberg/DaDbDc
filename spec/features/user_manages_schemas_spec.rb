require 'spec_helper'

feature "User can manage schema" do
  scenario 'visiting list' do
    visit extracts_path
  end
  scenario 'Uploading ' do
    visit upload_extracts_path 
  end
end
