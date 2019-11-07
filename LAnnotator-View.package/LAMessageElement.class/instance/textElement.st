accessing
textElement
	| tmp2 |
	tmp2 := textElement.
	^ tmp2
		ifNil: [ textElement := LATextMessageElement new.
			self addChild: textElement.
			textElement ]
		ifNotNil: [ tmp2 ]