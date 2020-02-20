accessing
messageRelationIds
	self messageRelations ifEmpty: [
			^ messageRelationIds ifNil: [ messageRelationIds := OrderedCollection empty ] ].
	^ self messageRelations collect: [ :e | e id ]