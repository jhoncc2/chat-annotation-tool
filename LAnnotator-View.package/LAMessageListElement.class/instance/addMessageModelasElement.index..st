initialization
addMessageModelasElement: model index: anIndex
	| melement |
	melement := self newMessageElement: model.
	model messageElement: melement.
	melement index: anIndex.
	self addChild: melement.
	self messageElements add: melement.
	