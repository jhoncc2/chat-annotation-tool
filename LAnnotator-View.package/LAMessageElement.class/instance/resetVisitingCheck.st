initialize
resetVisitingCheck
	self setUnvisited.
	(self messageElementRelations select: [ :e | e visited ]) do: [ :e | e resetVisitingCheck ]