actions
timeBetween: aTimestamp and: bTimestamp
	| font diff |
	diff := bTimestamp asSeconds - aTimestamp asSeconds.
	
	font := (diff abs / 3600) * 15.
	font := { font. 8 } max.
	font := { font. 12 } min.
	self text: (self prettyPrintDiff: diff).
	self look fontSize: font