initialization
createMessageTrace: aMessageElement
	messageTrace := listView elementClass newWithModel: aMessageElement messageModel controller: aMessageElement controller.
	
	