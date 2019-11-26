as yet unclassified
prettyPrintDiff: intAsSeconds
	| d |
	"intAsSeconds = 0 ifTrue: [ ^ String empty ]."
	d := intAsSeconds.
	d < 3600 ifTrue: [ 
		d < 60 
			ifTrue: [ ^ d asString , ' sec' ]
			ifFalse: [ ^ (d / 60) asInteger asString , ' min' ]
	] ifFalse: [
		d < 86400 
			ifTrue: [ ^ (d / 3600) asInteger asString , ' hour(s), ' , (self prettyPrintDiff: (d % 3600))  ]
			ifFalse: [ ^ (d / 86400) asInteger asString , ' day(s), ' , (self prettyPrintDiff: (d % 3600)) ]
	]