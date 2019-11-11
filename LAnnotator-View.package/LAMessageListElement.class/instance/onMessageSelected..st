initialization
onMessageSelected: aLAMessageElement
	
	aLAMessageElement onSelected.
	
	firstMessageSelected isNotNil ifTrue: [
			self connectMessageElement: firstMessageSelected with: aLAMessageElement.
			
			firstMessageSelected onUnselected. 
			aLAMessageElement  onUnselected.
			firstMessageSelected := nil.
		] ifFalse: [
			firstMessageSelected := aLAMessageElement.
		]