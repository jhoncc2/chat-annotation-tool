as yet unclassified
resetHighlighMessagesWithText: aText
	self messageElements do: [ :m | m resetColorIfContains: aText ]