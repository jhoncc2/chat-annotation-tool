accessing
updateLinks
	listViews do: #refreshMessageText.
	listViews do: [ :e | e updateLinking ]
	