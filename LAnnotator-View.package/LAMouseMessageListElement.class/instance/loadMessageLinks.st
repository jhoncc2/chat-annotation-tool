initialization
loadMessageLinks
	"update saved connections"
	[ 
		1 seconds wait.
		self messageElements do: [ :e | 
		e messageModel messageRelations do: [ :r | 
			self connectMessageElement: e with: r messageElement allowArcs: false. 
			]
	]] fork