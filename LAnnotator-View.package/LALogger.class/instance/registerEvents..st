initialization
registerEvents: announcer
	announcer when: LAAnnMessageClicked do: [ :e | self logEvent: e ].
	announcer when: LAAnnKeyDown do: [ :e | self logEvent: e ].
	announcer when: LAAnnKeyUp do: [ :e | self logEvent: e ].
	announcer when: LAAnnEnableLinking do: [ :e | self logEvent: e ].
	announcer when: LAAnnEnableUnlinking do: [ :e | self logEvent: e ].
	announcer when: LAAnnDisableControl do: [ :e | self logEvent: e ].
	announcer when: LAAnnEnableControl do: [ :e | self logEvent: e ].
	
	"After events/ logging events"
	announcer when: LAAnnMessageLink do: [ :e | self logEvent: e ].
	announcer when: LAAnnMessageUnlink do: [ :e | self logEvent: e ].
	announcer when: LAAnnHighlightedMessageMoved do: [ :e | self logEvent: e ].
	announcer when: LAAnnAnchoredMessageMoved do: [ :e | self logEvent: e ].
	announcer when: LAAnnButtonPressed do: [ :e | self logEvent: e ].
	announcer when: LAAnnAnchoredVisibilityChanged do: [ :e | self logEvent: e ].