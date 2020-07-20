initialization
registerEvents: announcer
	announcer when: LAAnnMessageClicked do: [ :e | self logEvent: e ].
	announcer when: LAAnnScroll do: [ :e | self logEvent: e ].
	announcer when: LAAnnDoLinkMessage do: [ :e | self logEvent: e ].
	announcer when: LAAnnDoUnlinkMessage do: [ :e | self logEvent: e ].
	
	"announcer when: LAAnnKeyDown do: [ :e | self logEvent: e ].
	announcer when: LAAnnKeyUp do: [ :e | self logEvent: e ].
	announcer when: LAAnnEnableLinking do: [ :e | self logEvent: e ].
	announcer when: LAAnnEnableUnlinking do: [ :e | self logEvent: e ]."
	"announcer when: LAAnnDisableControl do: [ :e | self logEvent: e ].
	announcer when: LAAnnEnableControl do: [ :e | self logEvent: e ]."
	
	"After events/ logging events"
	announcer when: LAAnnRemoveAllLinksFromAnchor do: [ :e | self logEvent: e ].
	announcer when: LAAnnMessageUnlinkButton do: [ :e | self logEvent: e ].
	announcer when: LAAnnEnableLinking do: [ :e | self logEvent: e ].
	announcer when: LAAnnEnableUnlinking do: [ :e | self logEvent: e ].
	
	announcer when: LAAnnMessageAnchoredMoveButton do: [ :e | self logEvent: e ].
	announcer when: LAAnnUnPreselectAnchorMessage do: [ :e | self logEvent: e ].
	announcer when: LAAnnPreselectAnchorMessage do: [ :e | self logEvent: e ].
	
	announcer when: LAAnnMouseEnterMessage do: [ :e | self logEvent: e ].
	announcer when: LAAnnMouseLeaveMessage do: [ :e | self logEvent: e ].
	
	announcer when: LAAnnMouseLeavePreselectAnchor do: [ :e | self logEvent: e ].
	announcer when: LAAnnMouseEnterPreselectAnchor do: [ :e | self logEvent: e ].
	
	announcer when: LAAnnMouseLeaveUnlink do: [ :e | self logEvent: e ].
	announcer when: LAAnnMouseEnterUnlink do: [ :e | self logEvent: e ].
	
	
	"After events/ logging events"
	announcer when: LAAnnOnMessageLinked do: [ :e | self logEvent: e ].
	announcer when: LAAnnOnMessageUnlinked do: [ :e | self logEvent: e ].
	announcer when: LAAnnHighlightedMessageMoved do: [ :e | self logEvent: e ].
	announcer when: LAAnnAnchoredMessageMoved do: [ :e | self logEvent: e ].
	announcer when: LAAnnButtonPressed do: [ :e | self logEvent: e ].
	announcer when: LAAnnAnchoredVisibilityChanged do: [ :e | self logEvent: e ].