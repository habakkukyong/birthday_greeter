require 'capybara/dsl'
require 'selenium-webdriver'

feature 'BirthdayGreeter' do
  scenario 'Get request to root loads content' do
    visit('/')
    puts page.html
    expect(page).to have_content 'Happy Birthday'
  end
end
