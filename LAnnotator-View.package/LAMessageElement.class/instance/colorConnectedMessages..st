initialize
colorConnectedMessages: aColor
	self resetVisitingCheck.
	self groupedColor: aColor.
	self setVisited.
	(self messageElementRelations reject: [ :e | e visited ]) 
		do: [ :e | e colorConnectedMessages: aColor ] 	