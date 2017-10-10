class Book
	attr_accessor :title

	def title=(new_title)
		@title = titleize(new_title)
	end

	def titleize_firstletter(word)
		return word.chars[0].upcase + word.chars[1..word.size].join
	end

	def titleize(welcome)
		little_words = ["the", "and", "in", "of", "a", "an"]
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

end
