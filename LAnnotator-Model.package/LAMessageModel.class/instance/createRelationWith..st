as yet unclassified
createRelationWith: aMessageModel
	(relations modelExists: aMessageModel) ifTrue: [ ^ self ].
	
	"if relation does not exist, create a new one"
	relations add: aMessageModel.
	aMessageModel createRelationWith: self.