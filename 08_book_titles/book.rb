class Book

	attr_reader :title

	def title=(new_title)
    except = ["a", "the", "an", "and", "of", "in"]
    words = new_title.split(" ")
    
    @title = [[words[0].capitalize] + words[1..-1].map do |word|
      if except.include?(word)
        word
      else
        word.capitalize
      end
      
    end].join(" ")
	end
end 