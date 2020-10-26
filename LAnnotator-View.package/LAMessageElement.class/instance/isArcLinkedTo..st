event-handling
isArcLinkedTo: aMessageElement
	^ self elementArcs anySatisfy: [ :a | a isConnectionToMessageElement: self  andMessageElement: aMessageElement ]