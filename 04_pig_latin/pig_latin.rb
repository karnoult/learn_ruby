def is_vowel(letter)
	return ["a", "e", "i", "o", "u", "y"].include? letter
end

#Identify phoneme and count it as a consonant even when it's preceded by a consonant
def update_if_phoneme(word)

	single_phoneme = ["qu"]

	start_with_phoneme = ""

	single_phoneme.each do |phoneme|
		
		start_with_phoneme = phoneme if word.start_with?(phoneme)
		if(start_with_phoneme == "" && !is_vowel(word[0]))
			start_with_phoneme = word[0] + phoneme if word[1..word.size].start_with?(phoneme)
		end

	end

	return start_with_phoneme

end

def translate_word(word)

	my_word = update_if_phoneme(word)

	if start_with_phoneme != ""
		my_word = word[start_with_phoneme.size..word.size] + start_with_phoneme + "ay"
	elsif is_vowel(word[0])
		my_word = word + "ay"
	else
		index = 0
		move_letters = ""
		while !is_vowel(word[index]) do
			move_letters << word[index]
			index += 1
		end
		my_word = word[index..word.size] + move_letters + "ay"
	end

	return my_word

end


def translate(phrase)

	new_phrase = ""

	phrase.split(" ").each do |word|
		new_phrase << translate_word(word) + " "
	end

	return new_phrase.rstrip

end