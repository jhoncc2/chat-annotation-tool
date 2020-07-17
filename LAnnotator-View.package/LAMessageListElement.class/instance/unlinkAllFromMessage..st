actions
unlinkAllFromMessage: aMessageElement
	| relations |
	relations := aMessageElement messageElementRelations collect: #value.
	relations do: [ :e |
		self unlinkMessage: aMessageElement to: e  
		]