initialization
addMessageModelasElement: model
	| melement |
	melement := self newMessageElement: model.
	model messageElement: melement.
	melement addEventHandler: self messageEventListener.
	self addChild: melement.
	self messageElements add: melement.
	