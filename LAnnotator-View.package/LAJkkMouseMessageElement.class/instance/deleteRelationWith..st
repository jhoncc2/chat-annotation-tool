initialization
deleteRelationWith: aMessageElement
	(self isRelatedWithMessageElement: aMessageElement) ifFalse: [ ^ self ].
	self messageElementRelations remove: aMessageElement.
	aMessageElement deleteRelationWith: self.
	
	self annotated: self messageElementRelations isNotEmpty