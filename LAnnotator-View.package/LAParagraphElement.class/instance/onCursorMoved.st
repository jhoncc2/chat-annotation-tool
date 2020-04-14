accessing
onCursorMoved
	self controller ifNil: [ ^ self ].
	self textElement editor hasSelection ifFalse: [ 
		self selected ifNotNil: [ 
			self controller resetHighlightsOnChatThread: self selected. 
			self selected: nil 
		].
		^ self ].
	self selected: self textElement editor selectedText.
	"Transcript show: (self textElement editor selectedText)"
	self controller highlightTextOnChatThread: self selected.