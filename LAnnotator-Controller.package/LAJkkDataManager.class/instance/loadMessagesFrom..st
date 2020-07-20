parsing
loadMessagesFrom: aUriString
	| index |
	messageModels := LAJkkMessageList new.
	index := 0.
	aUriString asFileReference readStreamDo: [ :stream |
	[stream atEnd ] whileFalse: [
			index := index + 1.
			self messageModels add: (self parseMessage: stream nextLine index: index).
		]
	].

	"after loading relations"	
	self messageModels do: [ :e | e assembleMentions: self messageModels ].
	self messageModels do: [ :e | e assembleRelations: self messageModels ].
	"self messageModels: self messageModels reversed."