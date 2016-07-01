require('rspec')
require('word_count')

describe('String#number')  do
  it('Finds words that were input more than once')  do
    expect("Sam I am. Sam eats green eggs and ham.".number("Sam")).to(eq(2))
  end
end
