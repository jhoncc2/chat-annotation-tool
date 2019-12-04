initialization
thumbstring: aString 
	thumbstring := aString.
	aString size > 2 
		ifFalse: [ textView text: aString ]
		ifTrue: [ textView text: (aString first: 3) asUppercase. ].
	
	self background: (self class colorFor: aString).