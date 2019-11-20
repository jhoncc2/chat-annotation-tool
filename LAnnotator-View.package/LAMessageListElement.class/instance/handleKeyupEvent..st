initialization
handleKeyupEvent: aEvent
	
	aEvent key name = #C ifTrue: [ ^ self annotateNext ].
	aEvent key name = #ArrowDown ifTrue: [ ^ self focusNext ].
	aEvent key name = #ArrowUp ifTrue: [ ^ self focusPrevious ].
	