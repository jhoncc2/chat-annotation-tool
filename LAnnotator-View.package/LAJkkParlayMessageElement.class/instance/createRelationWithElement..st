initialization
createRelationWithElement: aMessageElement
	(self isRelatedWithMessageElement: aMessageElement) ifTrue: [ ^ self ].
	self messageElementRelations add: aMessageElement.
	aMessageElement createRelationWithElement: self.
	
	self annotated: self messageElementRelations isNotEmpty