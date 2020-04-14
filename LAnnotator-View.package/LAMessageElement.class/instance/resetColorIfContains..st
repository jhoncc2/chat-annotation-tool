ui-interaction
resetColorIfContains: aText
 	
	((self messageModel parsedContent includesSubstring: aText) 
	or: [ self messageModel username includesSubstring: aText ])
	ifFalse: [ ^ self ].
	self background: self groupedColor.