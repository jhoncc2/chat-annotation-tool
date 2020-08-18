accessing
chatParticipants
	^ chatParticipants ifNil: [ self createListOfChatParticipants ]