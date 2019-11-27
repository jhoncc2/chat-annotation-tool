initialization
loadMessagesFrom: ini to: end
	listView uiIndex: ini - 1.
	listView loadMessages: (self controller getMessagesFrom: ini to: end).
	self onMessagesLoaded