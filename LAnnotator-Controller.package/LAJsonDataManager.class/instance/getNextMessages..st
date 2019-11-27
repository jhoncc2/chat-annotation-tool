as yet unclassified
getNextMessages: anInt
	(self reachedLimit) ifTrue: [ ^ LADiscordMessageList empty ].
	
	self getMessagesFrom: self iterationCounter to: self iterationCounter + anInt.
		