as yet unclassified
getNextMessages: anInt
	(self reachedLimit) ifTrue: [ ^ self messageListClass empty ].
	
	self getMessagesFrom: self iterationCounter to: self iterationCounter + anInt.
		