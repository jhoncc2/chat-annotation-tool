initialization
thumbstring: aString 
	thumbstring := aString.
	textView text: (aString first: 3) asUppercase.
	self background: (self class colorFor: aString).