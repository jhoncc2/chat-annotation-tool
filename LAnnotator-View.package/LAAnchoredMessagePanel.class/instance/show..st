visibility
show: aMessage
	| view |
	self removeChildren.
	view := (LAJkkMessageElement newWithModel: aMessage messageModel).
	view onStrongSelected.
	view index: aMessage messageModel index.
	self addChild: view.
	self addChild: jumpButton.
	self height: aMessage height.