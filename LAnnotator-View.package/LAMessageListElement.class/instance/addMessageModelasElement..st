initialization
addMessageModelasElement: model
	| melement |
	melement := self newMessageElement: model.
	model messageElement: melement.
	self addChild: melement.
	self messageElements add: melement.
	