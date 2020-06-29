event-handling
handlgeUntangleElement: aMessageEl with: bMessageEl
	" create relation at model level"
		self isDeleteActive  
			ifTrue: [
				controller deleteRelationBetween: aMessageEl  messageModel 
						with: bMessageEl messageModel.
				"create relation at view level"
				self deleteElementConnection: aMessageEl with: bMessageEl.
				self fireEvent: (LARemoveUntangling new 
											aMessage: aMessageEl;
											bMessage: bMessageEl;
											yourself).
				self announceAction: (LAAnnMessageUnlink new 
											aMessage: aMessageEl;
											bMessage: bMessageEl;
											yourself). 
			] ifFalse: [
				controller relateMessage: aMessageEl  messageModel 
						with: bMessageEl messageModel.
				"create relation at view level"
				self connectMessageElement: aMessageEl with: bMessageEl.
				self fireEvent: (LACreateUntangling new 
											aMessage: aMessageEl;
											bMessage: bMessageEl;
											yourself). 
				self announceAction: (LAAnnMessageLink new 
											aMessage: aMessageEl;
											bMessage: bMessageEl;
											yourself). 
			].
	"inform that finished action"
	self announceAction: LAAnnOnFinishLinking new 