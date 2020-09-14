event-handling
hightlightEdgeLinks
	self elementArcs do: [:e | 
		e highlight.
		e updatePositionIfNeeded.
	].