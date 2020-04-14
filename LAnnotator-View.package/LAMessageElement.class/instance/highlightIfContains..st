ui-interaction
highlightIfContains: aText
	((self messageModel parsedContent includesSubstring: aText) 
	or: [ self messageModel username includesSubstring: aText ]) 
		ifFalse: [ ^ self ].
	self background: (self groupedColor alpha: 0.5).