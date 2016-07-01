require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('werd countin', {:type => :feature}) do
  it('processes the user entry and returns repeated words and number of times repeated') do
    visit('/')
    fill_in('sentence', :with => "Sam I am. Sam eats green eggs and ham.")
    fill_in('find', :with => "Sam")
    click_button('Send')
    expect(page).to have_content(2)
  end
end
