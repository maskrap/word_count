require('rspec')
require('word_count')

describe('String#word_count')  do
  it("Shows the original string inputted by the user")  do
    expect(("Sam I am. Sam eats green eggs and ham.")).word_to_count(eq("Sam I am. Sam eats green eggs and ham."))
  end
  it("Find words that were input more than once")  do
    expect(("Sam I am. Sam eats green eggs and ham.")).word_to_count(eq(2))
  end
  # it('Find words that were input more than once, case insensitive') do
  #   expect("Sam I am. Sam eats green eggs and Sam.".word_to_count("test")).to(eq(3))
  # end
end
