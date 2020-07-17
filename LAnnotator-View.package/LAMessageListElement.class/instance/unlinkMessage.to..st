initialization
unlinkMessage: aMessageEl to: bMessageEl
	aMessageEl ifNil: [ ^ self ].
	bMessageEl ifNil: [ ^ self ].
	(aMessageEl isRelatedWithMessageElement: bMessageEl) ifFalse: [ ^ self ].
	
	controller deleteRelationBetween: aMessageEl  messageModel 
						with: bMessageEl messageModel.
				"create relation at view level"
				self deleteElementConnection: aMessageEl with: bMessageEl.
				self fireEvent: (LARemoveUntangling new 
											aMessage: aMessageEl;
											bMessage: bMessageEl;
											yourself).
				self announceAction: (LAAnnOnMessageUnlinked new 
											aMessage: aMessageEl;
											bMessage: bMessageEl;
											yourself). 
											
	self onActionsChanged . 