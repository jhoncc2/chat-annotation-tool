loading
loadMessages: messageModelsList

	messageModelsList
		do: [ :model |
			self addMessageModelasElement: model
		].
	
	"update saved connections"
	self messageElements do: [ :e | 
		e messageModel messageRelations do: [ :r | 
			self connectMessageElement: e with: r messageElement allowArcs: false. 
			]
	] 