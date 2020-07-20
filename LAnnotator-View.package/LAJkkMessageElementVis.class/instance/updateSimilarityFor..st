similarity
updateSimilarityFor: aMessageModel
	self updateTimeSimilarity: aMessageModel timestamp.
	self updateTextSimilarity: aMessageModel content.
	self updateCommSimilarity: aMessageModel.