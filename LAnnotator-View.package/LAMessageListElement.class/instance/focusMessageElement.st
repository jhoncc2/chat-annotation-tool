focus
focusMessageElement
	self firstMessageSelected ifNil: [ ^ self ].
	
	self anchoredMessage ifTrue: [ 
		self firstMessageSelected onStrongSelected.
	] ifFalse: [
		self isLinkingActive not 
			ifTrue: [self firstMessageSelected onDelSelected]
			ifFalse: [
				self firstMessageSelected onSelected].]