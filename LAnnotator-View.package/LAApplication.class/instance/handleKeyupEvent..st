logging
handleKeyupEvent: anEvent
	(anEvent key name = #ShiftLeft or: (anEvent key name = #ShiftRight))
			ifTrue: [ 
				anEvent consumed: true.
				"^ controlPanel switchUntaglingMode."
				self announceAction: LAAnnEnableLinking.
			].
	"changes"
	anEvent key name = #C ifTrue: [ 
		anEvent consumed: true. 
		self announceAction: LAAnnLinkAndFocusNext new ].
	
	anEvent key name = #S ifTrue: [ 
		anEvent consumed: true.
		self announceAction: LAAnnLinkAndFocusNext new ].
	anEvent key name = #A ifTrue: [ 
		anEvent consumed: true.
		self isAnchorActive
			ifTrue: [ self announceAction: LAAnnDisableAnchor new ] 
			ifFalse: [ self announceAction: LAAnnEnableAnchor new ] 
		].
	anEvent key name = #R ifTrue: [ 
		anEvent consumed: true.
		self isLinkingActive
			ifTrue: [ self announceAction: LAAnnEnableUnlinking new ] 
			ifFalse: [ self announceAction: LAAnnEnableLinking new ] ].
	
	"arrows"
	anEvent key name = #ArrowDown ifTrue: [ ^ listView focusNext ].
	anEvent key name = #ArrowUp ifTrue: [ ^ listView focusPrevious ].
	
	