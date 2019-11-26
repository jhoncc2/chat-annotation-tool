parsing
loadMessagesFrom: aUriString
	messageModels := LAJkkMessageList new.
	
	aUriString asFileReference readStreamDo: [ :stream |
	[stream atEnd ] whileFalse: [ 
			self messageModels add: (self parseMessage: stream nextLine).
		]
	].

	"after loading relations"	
	self messageModels do: [ :e | e assembleRelations: self messageModels ].
	"self messageModels: self messageModels reversed."