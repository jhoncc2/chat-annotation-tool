events
loadMessagesFrom: ini to: end
	listView uiIndex: ini - 1.
	listView loadMessages: (listView  controller getMessagesFrom: ini to: end).
	
	listViewB uiIndex: ini - 1.
	listViewB loadMessages: (listViewB controller getMessagesFrom: ini to: end).
	
	self onMessagesLoaded