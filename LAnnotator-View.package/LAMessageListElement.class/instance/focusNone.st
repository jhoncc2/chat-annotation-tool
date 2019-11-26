focus
focusNone
	self anchoredMessage ifTrue: [ ^ self ].
	self firstMessageSelected ifNotNil: [ self firstMessageSelected onUnselected. ].
	
	messageSelectedIndex := 0.