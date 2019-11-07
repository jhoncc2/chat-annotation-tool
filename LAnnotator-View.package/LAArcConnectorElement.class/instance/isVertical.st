accessing
isVertical
	| tmp2 |
	tmp2 := vertical.
	^ tmp2 ifNil: [ vertical := true ] ifNotNil: [ tmp2 ]