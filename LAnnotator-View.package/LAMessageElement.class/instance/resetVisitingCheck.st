initialize
resetVisitingCheck
	self visited ifTrue: [ self setUnvisited ].
	(self messageElementRelations select: [ :e | e visited ]) do: [ :e | e resetVisitingCheck ]