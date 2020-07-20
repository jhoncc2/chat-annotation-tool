initialization
initializeEvents
	
	self onAction: LAAnnPreselectAnchorMessage do: [ :e |
		self isPreselectActive: true.
		self onActionsChanged.
	].

	self onAction: LAAnnUnPreselectAnchorMessage do: [ :e |
		self isPreselectActive: false.
		self onActionsChanged.
	].

	self onAction: LAAnnRemoveAllLinksFromAnchor do: [ :e |
		self unlinkAllFromMessage: self messageAnchored.
	].

	self onAction: LAAnnDoLinkMessage do: [ :e |
		self linkMessage: e aMessage to: e bMessage
	].

	self onAction: LAAnnDoUnlinkMessage do: [ :e |
		self unlinkMessage: e aMessage to: e bMessage
	].

	self onAction: LAAnnMoveHighlightedMessageToIndex do: [ :e |
		self messageHighlighted onUnselected.
		messagesHighlightedIndex := e index.
		self onActionsChanged. 
	].
	
	self onAction: LAAnnMoveAnchoredMessageToIndex do: [ :e |
		self messageAnchored onUnselected.
		messageAnchoredIndex := e index.
		self onActionsChanged. 
	].
	
	self when: BlMouseWheelEvent do: [ :e |
		self app announcer announce: (LAAnnScroll new scrollEvent: e; scrollElement: self parent; yourself).
		(self isAnchoredMessageOutOfView: (e vector y * 20) "=100") ifTrue: [ 
			self announceAction: (LAAnnOnAnchoredVisibility 
				message: (self messageElements at: messageAnchoredIndex) isVisible: false).
		] ifFalse: [ 
			self announceAction: (LAAnnOnAnchoredVisibility 
				message: (self messageElements at: messageAnchoredIndex ) isVisible: true).
		]
	 ].

	self onAction: LAAnnScrollToAnchoredMessage do: [ self moveScrollToView: (self messageElements at: messageAnchoredIndex) ].

	self onAction: LAAnnAnchoredMessageMoved do: [ "self updateSimilarityFor: self messageAnchored"].
	
	self onAction: LAAnnMoveHighlightedToAnchored do: [
		self messageHighlighted onUnselected.
		messagesHighlightedIndex := {(messageAnchoredIndex - 1). 1}  max.
		self onActionsChanged. 
		].

	self onAction: LAAnnMessagesLoaded do: [ :e |
		self loadMessageLinks.
		messageAnchoredIndex := 1. 
		messagesHighlightedIndex := 1.
		self onActionsChanged.
	].
	
	"anchor mode"
	"self onAction: LAAnnEnableAnchor do: [ anchoredMessage := true. self onActionsChanged ].
	self onAction: LAAnnDisableAnchor do: [ anchoredMessage := false. self onActionsChanged ]."
	
	self onAction: LAAnnMoveAnchoredMessage do: [ :e | self moveAnchored: e ].
	self onAction: LAAnnMoveHighlightedMessage do: [ :e | self moveHighlighted: e ].

	"annotate"
	"self onAction: LAAnnLinkAndFocusNext do: [ self annotateNext ]."
	self onAction: LAAnnSelfLink do: [ self annotateSelfMessage ].
	self onAction: LAAnnDoLink do: [ self doLink ].
	self onAction: LAAnnEnableLinking do: [ 
		isLinkingActive := true. 
		self onActionsChanged ].
	self onAction: LAAnnEnableUnlinking do: [ 
		isLinkingActive := false. 
		self onActionsChanged ].

	self onAction: LAAnnMessageClicked do: [ :ann | 
		self onMessageHighlightedClicked: ann message messageModel.
	].
