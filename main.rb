#!/usr/bin/ruby

require './scores'
require './words.rb'

# grab users letters
puts "Provide us the letters (no spaces please)"
word = gets.chomp.downcase

arr = word.split('')

# store words that can be spelled with user's letters
success = []

# iterate through dictionary of words
WORDS.each do |w|

	# create temp arrays
	dict_arr = w.split('')
	user_arr = arr.dup
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
			success << w
			test = false
		end
	end
		
end

# create hash for successful words and their corresponding values
SUCCESS = {}

success.each do |w|
  score = wordValue(w)
  SUCCESS[w] = score
end

# sort hash from lowest to smallest value
SUCCESS = SUCCESS.sort_by {|word, value| value}

# print results to screen
SUCCESS.each {|k,v| puts "#{k}:  #{v}"}


puts "The End"

