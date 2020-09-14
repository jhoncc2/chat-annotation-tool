accessing
removeLinksIfAnnouncement
	self plainUsername = 'Announce' ifTrue: [
		|relations|
		relations := self messageRelations collect: #yourself.
		relations do: [ :e |
			self deleteRelationWith: e
		] 
	]