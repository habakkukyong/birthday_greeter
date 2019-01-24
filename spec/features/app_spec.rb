require 'capybara/dsl'
require 'selenium-webdriver'

feature 'Index' do
  scenario 'Get request to root loads content' do
    visit('/')
    expect(page).to have_content 'Name?'
  end

  scenario 'Username is passed to greeting page' do
    visit('/')
    fill_in 'name', with: 'username'
    click_button 'Submit'
    expect(page).to have_content 'Happy Birthday username!'
  end
end
