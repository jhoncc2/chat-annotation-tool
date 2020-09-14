accessing
removeLinksIfBot
	self plainUsername = 'ubottu' ifTrue: [
		|relations|
		relations := self messageRelations collect: #yourself.
		relations do: [ :e |
			self deleteRelationWith: e
		] 
	]