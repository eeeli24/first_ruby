def translate (phrase)
	words = phrase.split(" ")
	pigphrase = []
	words.each do |word|
		if word[0].match(/[aeiou]/)
			pigphrase << word + "ay"
			
		elsif word[0].match(/[^aeiou]/)

			if word[0..1].match("qu")
				pigword = word + word[0..1] + "ay"
				pigword[0..1] = ""
				pigphrase << pigword

			elsif word[0..1].scan(/[^aeiou]/).count == 1
				pigword = word + word[0] + "ay"
				pigword[0] = ""
				pigphrase << pigword

			elsif (word[0..2].scan(/[^aeiou]/).count == 2) && !(word[0..2].match("qu"))
				pigword = word + word[0..1] + "ay"
				pigword[0..1] = ""
				pigphrase << pigword

			elsif (word[0..2].scan(/[^aeiou]/).count == 3) || (word[0..2].match("qu"))
				pigword = word + word[0..2] + "ay"
				pigword[0..2] = ""
				pigphrase << pigword

			end
		end
	end

	pigphrase.join(" ")

end
