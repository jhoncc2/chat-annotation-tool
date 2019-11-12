drawing
deleteRelationWith: aMessageElement
	(self isRelatedWithMessageElement: aMessageElement) ifFalse: [ ^ self ].
	
	self messageElementRelations remove: aMessageElement.
	aMessageElement deleteRelationWith: self.