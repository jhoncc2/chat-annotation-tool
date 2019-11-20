loading
updateMessages
	self controller messageModels
		do: [ :model | 
			self addMessageModelasElement: model
		].
	
	"update saved connections"
	self messageElements do: [ :e | 
		e messageModel messageRelations do: [ :r | 
			self connectMessageElement: e with: r messageElement. 
			]
	] 