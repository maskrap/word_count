require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('countin words', {:type => :feature}) do
  it('Generates the number of times multiple-inputted words were input') do
    visit('/')
    fill_in('words', :with => 'Sam I am. Sam eats green eggs and ham')
    fill_in('word', :with => "Sam")
    click_button('Enter')
    expect(page).to have_content(2)
  end
end
