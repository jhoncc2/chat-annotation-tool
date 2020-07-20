parsing
createListOfChatParticipants
	chatParticipants := (self messageModels collect: [ :e |
		e username copyFrom:  2 to: e username size -1
		]) asSet asOrderedCollection.
	^ chatParticipants 