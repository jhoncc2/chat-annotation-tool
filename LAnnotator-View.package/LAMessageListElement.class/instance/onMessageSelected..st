event-handling
onMessageSelected: aLAMessageElement
	
	self firstMessageSelected isNotNil ifTrue: [
			" create relation at model level"
			self handlgeUntangleElement: self firstMessageSelected  with: aLAMessageElement.
			self focusNone.
		] ifFalse: [
			messageSelectedIndex := messageElements indexOf: aLAMessageElement.
			self fireEvent: (LASelectUntangling new 
									aMessage: aLAMessageElement; 
									yourself)  
		].
	
	self focusMessageElement.  
	