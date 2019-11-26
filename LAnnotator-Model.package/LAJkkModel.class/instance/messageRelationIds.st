accessing
messageRelationIds
	self messageRelations ifEmpty: [ ^ messageRelationIds ].
	^ messageRelations collect: [ :e | e id ]