initialization
initializeEvents
	self initializeLogEvents.

	"self when: LAUEventSwitchMode do: [ :e | listView switchUntaglingMode ].
	self when: LAUEventSwitchAnchor do: [ :e | listView switchAnchorStatus ].
	self when: LAUEventAnnotateNext do: [ :e | listView annotateNext ].
	self when: LAUSelfLinkingEvent do: [ :e | listView annotateSelfMessage ]."
	
	"self onAction: LAAnnEnableAnchor do: [ isAnchorActive := true ].
	self onAction: LAAnnDisableAnchor do: [ isAnchorActive := false ]."
	
	self onAction: LAAnnOnFinishLinking do: [ 
		isControlPressed ifFalse: [ self announceAction: LAAnnMoveAnchoredMessage down. ].
		self announceAction: LAAnnScrollToAnchoredMessage new.
	].
	
	self when: BlKeyUpEvent do: [ :e | self handleKeyupEvent: e ].
	self when: BlKeyDownEvent do: [ :e | self handleKeydownEvent: e ].