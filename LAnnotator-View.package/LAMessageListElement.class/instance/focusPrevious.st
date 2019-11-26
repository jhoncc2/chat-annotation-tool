focus
focusPrevious
	"self assert: self firstMessageSelected isNotNil
		description: 'No element selected'."
	self anchoredMessage ifTrue: [ ^ self. ].
	self firstMessageSelected ifNil: [ ^ self. ].
	
	self firstMessageSelected onUnselected.
	messageSelectedIndex := messageSelectedIndex - 1.
	self focusMessageElement.