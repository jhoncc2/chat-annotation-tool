as yet unclassified
getNextMessages: anInt
	(self reachedLimit) ifTrue: [ ^ LAMessageModels empty ].
	
	self getMessagesFrom: self iterationCounter to: self iterationCounter + anInt.
		