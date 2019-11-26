event-handling
handlgeUntangleElement: aMessageEl with: bMessageEl
	" create relation at model level"
		self isDeleteActive 
			ifTrue: [
				controller deleteRelationBetween: aMessageEl  messageModel 
						with: bMessageEl messageModel.
				"create relation at view level"
				self deleteElementConnection: aMessageEl with: bMessageEl.
				
			] ifFalse: [
				controller relateMessage: aMessageEl  messageModel 
						with: bMessageEl messageModel.
				"create relation at view level"
				self connectMessageElement: aMessageEl with: bMessageEl.
			].