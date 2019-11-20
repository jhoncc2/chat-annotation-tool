focus
focusNone
	self firstMessageSelected ifNotNil: [ self firstMessageSelected onUnselected. ].
	
	messageSelectedIndex := nil.