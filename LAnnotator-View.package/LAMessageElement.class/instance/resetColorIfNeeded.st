ui-interaction
resetColorIfNeeded
	messagePharagraph textElement editor selectNone.
	strongSelected 
		ifTrue: [ self onStrongSelected ]
		ifFalse: [ self background: self groupedColor. ]
	
	