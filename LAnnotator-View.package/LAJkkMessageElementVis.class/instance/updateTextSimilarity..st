similarity
updateTextSimilarity: content
	|sim per|
	sim := content asSet intersection: self messageModel content asSet.
	per := sim size / self messageModel content size.
	textSimilarity updatePercentage: per. 