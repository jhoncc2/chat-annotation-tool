similarity
updateCommSimilarity: aMessageModel
	|users per|
	users := self messageModel messageRelations collect: #username
					thenSelect: [:u | u = aMessageModel username].
					per := users size / 5.
	per := (per > 1) ifTrue: [ 1 ] ifFalse: [per].
	commSimilarity updatePercentage: per. 