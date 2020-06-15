initialization
initializeEvents
	super initializeEvents.
	
	"unlinking mode"
	self onAction: LAAnnEnableLinking do: [ isDeleteActive := false. self onActionsChanged ].
	self onAction: LAAnnEnableUnlinking do: [ isDeleteActive := true. self onActionsChanged ].
	
	"anchor mode"
	self onAction: LAAnnEnableAnchor do: [ anchoredMessage := true. self onActionsChanged ].
	self onAction: LAAnnDisableAnchor do: [ anchoredMessage := false. self onActionsChanged ].
	
	"annotate"
	self onAction: LAAnnLinkAndFocusNext do: [ self annotateNext ].
	self onAction: LAAnnSelfLink do: [ self annotateSelfMessage ].
	
	self onAction: LAAnnMessageClicked do: [ :ann | 
		self onMessageClicked: ann message messageModel. 
	].
	
	self when: BlClickEvent do: [ :e |
		(e target class allSuperclasses anySatisfy: [ :c | c == LAMessageElement  ]) ifTrue: [
			self announceAction: (LAAnnMessageClicked new message: e target; yourself).
			"e consumed: true."
		]
	 ].