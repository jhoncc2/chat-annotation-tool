accessing
assembleMentions: messagesModels
	messageMentions := OrderedCollection new.
	messagesModels do: [ :e |
		((e parsedContent findString: self plainUsername) > 0) 
			ifTrue: [ messageMentions add: e ].
	]