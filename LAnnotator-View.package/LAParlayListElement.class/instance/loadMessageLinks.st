initialization
loadMessageLinks
	"update saved connections"
	[ 
		2 seconds wait.
		self messageElements do: [ :e | 
			e messageModel messageRelations do: [ :r | 
				"<self connectMessageElement: e with: r messageElement allowArcs: true.> "
				"e colorConnectedMessages: e groupedColor."
				e createRelationWithElement: r messageElement.
				r messageElement colorConnectedMessages: e groupedColor.
				self addArcLinkBetween: e and: r messageElement
			].
		].
	] fork