focus
focusMessageElement
	self firstMessageSelected ifNil: [ ^ self ].
	
	self anchoredMessage ifTrue: [ 
		self firstMessageSelected onStrongSelected.
	] ifFalse: [
		self isDeleteActive 
			ifTrue: [self firstMessageSelected onDelSelected]
			ifFalse: [
				self firstMessageSelected onSelected].]