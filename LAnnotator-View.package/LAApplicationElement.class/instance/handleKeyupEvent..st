initialization
handleKeyupEvent: anEvent
	anEvent key name = #C ifTrue: [ anEvent consumed: true. ^ listView annotateNext ].
	anEvent key name = #A ifTrue: [ 
		anEvent consumed: true.
		controlPanel switchAnchorStatus ].
	anEvent key name = #R ifTrue: [ 
		anEvent consumed: true.
		controlPanel switchUntaglingMode ].
	
	"arrows"
	anEvent key name = #ArrowDown ifTrue: [ ^ listView focusNext ].
	anEvent key name = #ArrowUp ifTrue: [ ^ listView focusPrevious ].
	