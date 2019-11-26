accessing
colorFor: aString
	(self colorDict includesKey: aString asSymbol) ifTrue: [ 
		^ (self colorDict at: aString asSymbol) alpha: 1. 
	] ifFalse: [ 
		^ (self colorDict at:  aString asSymbol put: self colorPicker nextColor) alpha: 1.
	]