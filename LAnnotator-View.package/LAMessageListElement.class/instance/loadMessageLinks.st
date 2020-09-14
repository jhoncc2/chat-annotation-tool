initialization
loadMessageLinks
	"update saved connections"
	[ 
		1 seconds wait.
		self messageElements do: [ :e | 
			e refreshMessageText.
			e messageModel messageRelations do: [ :r | 
				self connectMessageElement: e with: r messageElement allowArcs: true. 
			]
	]] fork