event-handling
switchAnchorStatus
	"self firstMessageSelected  ifNil: [ ^self ]."
	anchoredMessage ifFalse: [
		anchoredMessage := true.
	] ifTrue: [ 
		anchoredMessage := false.
	].
	self focusMessageElement.
	