event-handling
annotateNext
	self firstMessageSelected ifNil: [ ^ self ].
	(self messageSelectedIndex + 1) > self messageElements size ifNil: [ ^ self ].
	
	self handlgeUntangleElement: self firstMessageSelected  
			with: (messageElements at: messageSelectedIndex + 1).
	
	self anchoredMessage ifTrue: [ self firstMessageSelected onStrongSelected ].
	
	self focusNext.
	