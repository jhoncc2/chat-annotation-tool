logging
handleKeyupEvent: anEvent
	(anEvent key name = #Z)
			ifTrue: [
				isLinkingActive := true.
				self announceAction: LAAnnEnableLinking new.
				anEvent consumed: true.
			].
	anEvent key name = #ShiftLeft ifTrue: [ 
		isControlPressed := false.
		self announceAction: LAAnnDisableControl new.
		anEvent consumed: true. 
		].
	
	
	"arrows"
	anEvent key name = #ArrowDown ifTrue: [
		isControlPressed 
			ifTrue: [ self announceAction: LAAnnMoveAnchoredMessage down ]
			ifFalse: [ self announceAction: LAAnnMoveHighlightedMessage down ]
		].
	anEvent key name = #ArrowUp ifTrue: [
		isControlPressed 
			ifTrue: [ self announceAction: LAAnnMoveAnchoredMessage up ]
			ifFalse: [ self announceAction: LAAnnMoveHighlightedMessage up ]
		].
	
	"changes"

	anEvent key name = #D ifTrue: [ 
		anEvent consumed: true.
		self announceAction: LAAnnDoLink new.
		].
	
	anEvent key name = #S ifTrue: [
		anEvent consumed: true.
		self announceAction: LAAnnSelfLink new.
	].
	anEvent key name = #A ifTrue: [ 
		anEvent consumed: true.
		self isAnchorActive
			ifTrue: [ self announceAction: LAAnnDisableAnchor new ] 
			ifFalse: [ self announceAction: LAAnnEnableAnchor new ] 
		].
	"anEvent key name = #R ifTrue: [ 
		anEvent consumed: true.
		self isLinkingActive
			ifTrue: [ self announceAction: LAAnnEnableUnlinking new ] 
			ifFalse: [ self announceAction: LAAnnEnableLinking new ] ]."
	