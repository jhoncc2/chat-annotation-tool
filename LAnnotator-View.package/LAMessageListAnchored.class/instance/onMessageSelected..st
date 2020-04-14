event-handling
onMessageSelected: aLAMessageElement
	super onMessageSelected: aLAMessageElement.
	self app createMessageTrace: aLAMessageElement.