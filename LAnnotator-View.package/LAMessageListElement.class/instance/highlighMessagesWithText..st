hightlight
highlighMessagesWithText: aText
	self messageElements do: [ :m | m highlightIfContains: aText ]