ui-interaction
highlightIfContains: aText
	|occs|
	occs := self messageModel parsedContent allRangesOfSubstring: aText.
	(occs isEmpty
		and: [ (self messageModel username includesSubstring: aText) not ]) 
		ifTrue: [
		^ self ].
	
	occs do: [ :i | 
		messagePharagraph textElement editor selecter from: i first to: i last
	].
	self background: (strongSelected ifTrue: [self strongSelectedColor] ifFalse: [self groupedColor alpha: 0.5] ).