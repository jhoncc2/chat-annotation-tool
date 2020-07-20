similarity
updateTimeSimilarity: timestamp
	|per|
	per := (timestamp asSeconds - self messageModel timestamp asSeconds) abs / 600.
	per := 1- ((per > 1) ifTrue: [ 1 ] ifFalse: [per]).
	timeSimilarity updatePercentage: per.