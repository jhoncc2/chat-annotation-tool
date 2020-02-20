event-handling
annotateSelfMessage
	| back |
	self firstMessageSelected ifNil: [ ^ self ].
	(self firstMessageSelected isLinkedTo: self firstMessageSelected) 
		ifFalse: [ "create link"
			self handlgeUntangleElement: self firstMessageSelected  
				with: self firstMessageSelected.
		] ifTrue: [ "delete link"
			back := isDeleteActive.
			isDeleteActive := true.
			self handlgeUntangleElement: self firstMessageSelected  
				with: self firstMessageSelected.
			isDeleteActive := back.
		].
	self focusNone.
	
	self focusMessageElement.
	