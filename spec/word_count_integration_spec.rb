require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('countin words', {:type => :feature}) do
  it('Generates the number of times multiple-inputted words were input') do
    visit('/')
    fill_in('words', :with => 'Sam I am. Sam eats green eggs and ham')
    click_button('Send')
    expect(page).to have_content('Sam: 2 times')
  end
end
