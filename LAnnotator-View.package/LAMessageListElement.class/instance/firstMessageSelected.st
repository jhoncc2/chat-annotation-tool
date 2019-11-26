initialization
firstMessageSelected

	messageSelectedIndex == 0 ifTrue: [ ^ nil ].
	^ messageElements at: messageSelectedIndex 