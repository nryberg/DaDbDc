require 'spec_helper'

feature 'User can manage translation library' do
  scenario 'Viewing the library' do
    visit root_path

    expect(page).to have_content("Welcome to the translation library")

  end
end

