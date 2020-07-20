accessing
assembleMentions: messagesModels
	messageMentions := OrderedCollection new.
	messagesModels do: [ :e |
		((self parsedContent findString: e plainUsername) > 0) 
			ifTrue: [ messageMentions add: e ].
	]