#!/usr/bin/ruby

require './scores'
require './words.rb'
require './q.rb'
require './adjacent.rb'
require './wordOnBoard.rb'

# grab users letters
puts "Provide us the letters (no spaces please)"
word = gets.chomp.downcase

# test for the presence of 'Q' in letters and create board string
if word.include?("q")
	if word.length == 17
		board = combineQAndU(word)
	else                   #assume 'q' == 'qu'
		board = addUToQ(word)
	end
else
	board = word
end


puts Time.now
start = Time.now
# store words that can be spelled with user's letters
possible = []


# Create list of possible words
#
# iterate through dictionary
WORDS.each do |w|

	# create temp arrays for dictionary word and user's board
	dict_arr = w.split('')
	user_arr = board.split('')
	test = true

	# test whether users letters spell current word in dict
	while test
		dict_arr.each do |letter|
			if (user_arr.include?(letter))
				i = user_arr.index(letter)
				user_arr.delete_at(i)
			else
				test = false
				break
			end
		end

		# store word in array
		if test 
			possible << w
			test = false
		end
	end
		
end


# create hash to store successful words and their values
SUCCESS = {}


# Cycle through tiles and check whether word is contained in possible list
#
# returns true if word was found, false otherwise

# set this to true to log the recursive calls
DEBUG = false



# Cycle through each possible word
#
# Call is_word_on_board method
possible.each do |word|

	if is_word_on_board(word, board)
		score = wordValue(word)
		SUCCESS[word] = score
	end
end


#
# sort hash from lowest to smallest value
#
SUCCESS = SUCCESS.sort_by {|word, value| value}

#
# print results to screen
#
SUCCESS.each {|k,v| puts "#{k}:  #{v}"}


puts "The End"

puts Time.now - start

puts SUCCESS.length

