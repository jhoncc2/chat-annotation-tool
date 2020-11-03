panels
handleKeyupEvent: anEvent
	self announceAction: (LAAnnKeyUp key: anEvent key name).

	anEvent key name = #ShiftLeft ifTrue: [ 
		isLinkingActive := true.
		self announceAction: LAAnnEnableLinking new.
		anEvent consumed: true. 
		].
	
	anEvent key name = #R ifTrue: [
		self announceAction: LAAnnRemoveAllLinksFromAnchor new.
		].	
	anEvent key name = #S ifTrue: [
		self announceAction: LAAnnMoveAnchoredMessage down.
		self announceAction: LAAnnScrollToAnchoredMessage new.
	].
   anEvent key name = #W ifTrue: [
		self announceAction: LAAnnMoveAnchoredMessage up.
		self announceAction: LAAnnScrollToAnchoredMessage new.
	].