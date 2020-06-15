event-handling
annotateSelfMessage
	self firstMessageSelected ifNil: [ ^ self ].
	self handlgeUntangleElement: self firstMessageSelected  
		with: self firstMessageSelected.
	
	self focusNone.
	
	self focusMessageElement.
	