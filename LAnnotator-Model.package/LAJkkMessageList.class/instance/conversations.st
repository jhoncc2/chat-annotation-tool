structure
conversations
	^ (self collect: [ :e | e messageRoot ]) flattened select: #hasMessageRelations 