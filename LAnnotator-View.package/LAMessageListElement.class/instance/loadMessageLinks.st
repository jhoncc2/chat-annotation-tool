initialization
loadMessageLinks
	"update saved connections"
	self messageElements do: [ :e | 
		e messageModel messageRelations do: [ :r | 
			self connectMessageElement: e with: r messageElement allowArcs: false. 
			]
	] 