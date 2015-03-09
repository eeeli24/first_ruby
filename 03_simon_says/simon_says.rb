def echo (x)
	x
end

def shout (x)
	x.upcase
end

def repeat (x, t = 2)
	[x] * t * " "
end

def start_of_word (word, letters = 1)
	word[0..letters-1]
end

def first_word (x)
	x.split(" ")[0]
end

def titleize (x)
	if x.include?(" ")
		if x.split(" ")[0] == ("and" || "over" || "the")
			x.split(" ").each {|i| i.capitalize!}.join(" ")
		else
			x.split(" ").each {|i| i.capitalize!}.join(" ").gsub("And", "and").gsub("Over", "over").gsub("The", "the").sub("the", "The")
		end
	else
		x.capitalize
	end
end