initialization
updateMessages
	self controller messageModels
		do: [ :model | 
			| melement |
			melement := self newMessageElement: model.
			melement addEventHandler: self messageEventListener.
			self addChild: melement ]