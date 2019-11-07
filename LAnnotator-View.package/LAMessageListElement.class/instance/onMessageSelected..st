initialization
onMessageSelected: aLAMessageElement
	self messagesSelected < 3 ifFalse: [ ^ self. ].
 	self increaseMessagesSelected.
	self messagesSelected == 2 ifTrue: [
			firstMessageSelected onUnselected. 
			aLAMessageElement  onUnselected.
			controller relateMessage: firstMessageSelected messageModel 
						with: aLAMessageElement messageModel.
			self resetMessagesSelected.
		] ifFalse: [
			firstMessageSelected := aLAMessageElement.
			aLAMessageElement onSelected.
		]