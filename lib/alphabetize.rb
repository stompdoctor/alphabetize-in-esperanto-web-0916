require "pry"

ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(ary)
	mag = {}
  ary.each do |phrase| 
  	new_phrase = ""
  	phrase.each_char { |chr| new_phrase << ALPHABET.index(chr) if ALPHABET.include?(chr)}
  	mag[phrase] = new_phrase
  end
  ary.sort_by { |phrase| mag[phrase] }
end