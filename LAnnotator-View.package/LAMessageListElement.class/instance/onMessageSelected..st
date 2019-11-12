initialization
onMessageSelected: aLAMessageElement
	
	self isDeleteActive 
		ifTrue: [aLAMessageElement onDelSelected]
		ifFalse: [aLAMessageElement onSelected].
		
	firstMessageSelected isNotNil ifTrue: [
			" create relation at model level"
		self isDeleteActive 
			ifTrue: [
				
				controller deleteRelationBetween: firstMessageSelected  messageModel 
						with: aLAMessageElement messageModel.
	
			"create relation at view level"
			self deleteElementConnection: firstMessageSelected with: aLAMessageElement.
			
			firstMessageSelected onUnselected. 
			aLAMessageElement  onUnselected.
			firstMessageSelected := nil.
			
				]
			ifFalse: [
				controller relateMessage: firstMessageSelected  messageModel 
						with: aLAMessageElement messageModel.
	
			"create relation at view level"
			self connectMessageElement: firstMessageSelected with: aLAMessageElement.
			
			firstMessageSelected onUnselected. 
			aLAMessageElement  onUnselected.
			firstMessageSelected := nil.
			].
	
			
			
		] ifFalse: [
			firstMessageSelected := aLAMessageElement.
		]