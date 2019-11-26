initialization
handleKeyupEvent: aEvent
	
	aEvent key name = #C ifTrue: [ ^ listView annotateNext ].
	aEvent key name = #A ifTrue: [ ^ listView switchAnchorStatus ].
	aEvent key name = #R ifTrue: [ ^ listView switchUntaglingMode ].
	
	"arrows"
	aEvent key name = #ArrowDown ifTrue: [ ^ listView focusNext ].
	aEvent key name = #ArrowUp ifTrue: [ ^ listView focusPrevious ].
	