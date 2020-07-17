accessing
isRelatedWithMessageElement: aMessageElement
	^ self messageElementRelations anySatisfy: [ :e | e = aMessageElement ] 
	