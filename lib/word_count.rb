require('pry')

class String
  define_method(:word_count) do |word|
    calculator = 0
    self.split(" ").each() do |count|
      if count.downcase().gsub(/[[:punct:]]/, '') == word.downcase().gsub(/[[:punct:]]/, '')
        calculator+=1
      end
    end
    calculator
  end
end
