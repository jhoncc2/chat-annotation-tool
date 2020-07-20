parsing
chatParticipants
	^ chatParticipants ifNil: [ self createListOfChatParticipants ]