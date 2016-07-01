require('pry')

class String
  define_method(:number) do |find|
    counter = 0
    self.split(" ").each() do |word|
      if word.downcase().gsub(/[[:punct:]]/, '') == find.downcase().gsub(/[[:punct:]]/, '')
        counter+=1
      end
    end
    counter
  end
end
