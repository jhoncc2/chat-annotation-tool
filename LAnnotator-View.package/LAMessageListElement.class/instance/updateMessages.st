initialization
updateMessages
	self controller messageModels
		do: [ :model | 
			self addMessageModelasElement: model
		]