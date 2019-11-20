focus
focusMessageElement
	self isDeleteActive 
			ifTrue: [self firstMessageSelected onDelSelected]
			ifFalse: [self firstMessageSelected onSelected].