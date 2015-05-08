require('capybara/rspec')
require('./app')
require('spec_helper')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path to the welcome page', {:type => :feature}) do
  it('displays the welcome page') do
    visit('/')
    expect(page).to(have_content('HAIR SALON APP'))
  end
end
