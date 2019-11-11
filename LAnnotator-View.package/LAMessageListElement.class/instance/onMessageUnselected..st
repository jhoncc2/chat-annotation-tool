initialization
onMessageUnselected: aLAMessageElement
	aLAMessageElement onUnselected.
	messagesSelected := messagesSelected -1.
	firstMessageSelected := nil.