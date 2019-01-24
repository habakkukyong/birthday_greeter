require 'capybara/dsl'
require 'selenium-webdriver'

feature 'TestServer' do
  scenario 'Get request to root on TestServer loads content' do
    visit('/')
    puts page.html
    expect(page).to have_content 'Server is alive'
  end
end
