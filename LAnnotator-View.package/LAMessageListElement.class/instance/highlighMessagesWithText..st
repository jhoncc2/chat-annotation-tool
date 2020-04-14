as yet unclassified
highlighMessagesWithText: aText
	self messageElements do: [ :m | m highlightIfContains: aText ]