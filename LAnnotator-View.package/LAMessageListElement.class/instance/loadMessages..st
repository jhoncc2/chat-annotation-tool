loading
loadMessages: messageModelsList
	|lastAdded | 
	lastAdded := nil.
	messageModelsList
		doWithIndex: [ :model :i |
			lastAdded ifNotNil: [ 
				self addTimeLapsedBetween: lastAdded and: model.
			].
			lastAdded := model.
			self addMessageModelasElement: model index: uiIndex + i.
		].
	
	"update saved connections"
	self messageElements do: [ :e | 
		e messageModel messageRelations do: [ :r | 
			self connectMessageElement: e with: r messageElement allowArcs: false. 
			]
	] 