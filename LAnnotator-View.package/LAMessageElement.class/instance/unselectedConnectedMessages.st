initialize
unselectedConnectedMessages
	^ (self messageElementRelations reject: [ :e | e selected ])