def combineQAndU(letters)
	# grab index of "Q"
	q_index = letters.index("q")

	# create array with letters
	arr = letters.split('')
	arr[q_index] = "qu"
	arr.delete_at(q_index + 1)
	
	#return array as string
	return arr.join('')
end

def addUToQ(letters)
	# grab index of "Q"
	q_index = letters.index("q")

	# create array with letters
	arr = letters.split('')
	arr[q_index] = "qu"
	
	#return array as string
	return arr.join('')
end
