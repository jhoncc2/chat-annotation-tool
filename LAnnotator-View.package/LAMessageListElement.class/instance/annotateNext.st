event-handling
annotateNext
	self firstMessageSelected ifNil: [ ^ self ].
	
	self handlgeUntangleElement: self firstMessageSelected  
			with: (messageElements at: messageSelectedIndex + 1).

	self focusNext.
	