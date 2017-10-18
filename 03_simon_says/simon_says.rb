def echo(welcome)
	welcome
end

def shout(welcome)
	welcome.upcase
end

def repeat(welcome, times = 2)
	((welcome + " ") * times).rstrip
end

def start_of_word(welcome, number)
	welcome[0..number-1]
end

def first_word(welcome)
	welcome.split(" ")[0]
end

def titleize_firstletter(word)
	return word[0].upcase + word[1..word.size]
end

def titleize(welcome)
	
	little_words = ["the", "and", "over"]
	final_word = welcome.split(" ")

	final_word.each do |word|
		word.capitalize! if !little_words.include?(word)
	end

	final_word[0].capitalize!

	return final_word.join(" ")

end