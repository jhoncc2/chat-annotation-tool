initialization
addMessageModelasElement: model
	| melement |
	melement := self newMessageElement: model.
	melement addEventHandler: self messageEventListener.
	self addChild: melement 