as yet unclassified
createRelationWith: aMessageModel
	(self messageRelations modelExists: aMessageModel) ifTrue: [ ^ self ].
	
	"if relation does not exist, create a new one"
	self messageRelations add: aMessageModel.
	aMessageModel createRelationWith: self.