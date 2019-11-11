drawing
createRelationWithElement: aMessageElement
	(self isRelatedWithMessageElement: aMessageElement) ifTrue: [ ^ self ].
	
	self messageElementRelations add: aMessageElement.
	aMessageElement createRelationWithElement: self.