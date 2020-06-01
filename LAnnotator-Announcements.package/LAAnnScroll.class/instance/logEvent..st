log
logEvent: aStream
	aStream 
		<< self class asString << '|'
		<< self scrollEvent timestamp asTime asString << '|'
		<< ((self scrollEvent vector y) >= 0 ifTrue: [ 'up' ] ifFalse: [ 'down' ]) << '|'
		<< self scrollEvent vector y asString << '|'
		<< self scrollElement scrollPosition y asString. 
		