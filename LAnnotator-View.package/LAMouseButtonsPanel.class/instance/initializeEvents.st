initialization
initializeEvents
	super initializeEvents.
	
	"anchor mode"
	"self onAction: LAAnnMoveAnchoredMessage do: [ :e | 
		e isDirectionUp ifTrue: [ moveUpButton up activate ] ].
	self onAction: LAAnnMoveHighlightedMessage do: [ :e | 
		e isDirectionUp ifTrue: [ anchorButton  activate ] ]."	