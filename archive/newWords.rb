#!/usr/bin/ruby
require 'open-uri'

text = File.open("words.txt", "r")
puts text.class

newWords = "" 

# Start array
newWords << "words = [\n"

text.each { |word|
	temp = "'"
	temp << word.gsub("'","").gsub("\n","").downcase
	if (temp.force_encoding("UTF-8").ascii_only?)
		temp << "',\n"
		newWords << temp
	end
}


# End array
newWords << "\n]"

newFile = File.open("wordsNew.txt", "w")
newFile.write(newWords)


