require 'capybara/dsl'

describe ServerTest do
  feature 'Server shows content' do
    scenario 'when running server can place get request' do
      visit('/')
      expect(page).to have_content 'Server is alive'
    end
  end
end
