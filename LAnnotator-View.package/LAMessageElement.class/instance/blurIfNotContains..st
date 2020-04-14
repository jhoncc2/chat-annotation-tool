ui-interaction
blurIfNotContains: aText
	(self messageModel parsedContent  includesSubstring: aText) ifTrue: [ ^ self ].
	self background: (self groupedColor alpha: 0.07).