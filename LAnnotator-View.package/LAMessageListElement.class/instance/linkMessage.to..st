initialization
linkMessage: aMessageEl to: bMessageEl
	aMessageEl ifNil: [ ^ self ].
	bMessageEl ifNil: [ ^ self ].
	(aMessageEl isRelatedWithMessageElement: bMessageEl) ifTrue: [ ^ self ].
	
	controller relateMessage: aMessageEl  messageModel 
						with: bMessageEl messageModel.
	"create relation at view level"
	self connectMessageElement: aMessageEl with: bMessageEl.
	self fireEvent: (LACreateUntangling new 
											aMessage: aMessageEl;
											bMessage: bMessageEl;
											yourself). 
	self announceAction: (LAAnnOnMessageLinked new 
											aMessage: aMessageEl;
											bMessage: bMessageEl;
											yourself). 
				"inform that finished action"
	"self announceAction: LAAnnOnFinishLinking new."
											
	self onActionsChanged. 