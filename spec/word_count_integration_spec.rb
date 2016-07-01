require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# describe('countin words', {:type => :feature}) do
#   it('Generates the number of times multiple-inputted words were input') do
#     visit('/')
#     fill_in('word_input', :with => 'Sam I am. Sam eats green eggs and ham.')
#     fill_in('word_input', :with => "Sam")
#     click_button('Send')
#     expect(page).to have_content(2)
#   end
# end
