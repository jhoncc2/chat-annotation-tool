relation-methods
deleteRelationWith: aMessageModel
	(self messageRelations modelExists: aMessageModel) ifFalse: [ ^ self ].
	
	"if relation does exist, remove"
	self messageRelations remove: aMessageModel.
	aMessageModel deleteRelationWith: self.