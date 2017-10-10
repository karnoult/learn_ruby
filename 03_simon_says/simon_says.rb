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
	return word.chars[0].upcase + word.chars[1..word.size].join
end

def titleize(welcome)
	
	little_words = ["the", "and", "over"]
	final_word = ""

	welcome.split(" ").each do |word|
		if final_word.size == 0 || !little_words.include?(word)
			final_word += titleize_firstletter(word) + " "
		else
			final_word += word + " "
		end
	end
	return final_word.rstrip

end