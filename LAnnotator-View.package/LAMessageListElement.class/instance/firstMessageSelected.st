initialization
firstMessageSelected
	messageSelectedIndex ifNil: [ ^ nil ].
	^ messageElements at: messageSelectedIndex 