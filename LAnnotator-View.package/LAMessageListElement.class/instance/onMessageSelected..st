initialization
onMessageSelected: aLAMessageElement
	
	aLAMessageElement onSelected.
	
	firstMessageSelected isNotNil ifTrue: [
			" create relation at model level"
			controller relateMessage: firstMessageSelected  messageModel 
						with: aLAMessageElement messageModel.
	
			"create relation at view level"
			self connectMessageElement: firstMessageSelected with: aLAMessageElement.
			
			firstMessageSelected onUnselected. 
			aLAMessageElement  onUnselected.
			firstMessageSelected := nil.
		] ifFalse: [
			firstMessageSelected := aLAMessageElement.
		]