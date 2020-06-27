initialization
initializeEvents
	super initializeEvents.
	
	self when: BlMouseWheelEvent do: [ :e |
		self app announcer announce: (LAAnnScroll new scrollEvent: e; scrollElement: self parent; yourself).
	 ].

	self onAction: LAAnnMessagesLoaded do: [ :e |
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
	self onAction: LAAnnEnableLinking do: [ self onActionsChanged ].
	self onAction: LAAnnEnableUnlinking do: [ self onActionsChanged ].

	self onAction: LAAnnMessageClicked do: [ :ann | 
		self onMessageHighlightedClicked: ann message messageModel.
	].
	
	self when: BlClickEvent do: [ :e |
		(e target class allSuperclasses anySatisfy: [ :c | c == LAMessageElement  ]) ifTrue: [
			self announceAction: (LAAnnMessageClicked new message: e target; yourself).
			"e consumed: true."
		]
	 ].