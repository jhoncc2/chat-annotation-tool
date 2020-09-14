initialization
loadMessagesFrom: ini to: end

	self listViews do: [ :e |
		e uiIndex: ini - 1.
		e loadMessages: (e controller getMessagesFrom: ini to: end).
	]
	