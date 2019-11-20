focus
focusNext
	"self assert: self firstMessageSelected isNotNil
		description: 'No element selected'."
	self firstMessageSelected ifNil: [ ^ self. ].
	
	self firstMessageSelected onUnselected.
	messageSelectedIndex := messageSelectedIndex + 1.
	self focusMessageElement.