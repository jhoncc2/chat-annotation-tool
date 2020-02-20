event-handling
switchAnchorStatus
	"self firstMessageSelected  ifNil: [ ^self ]."
	anchoredMessage := anchoredMessage not.
	self focusMessageElement.
	