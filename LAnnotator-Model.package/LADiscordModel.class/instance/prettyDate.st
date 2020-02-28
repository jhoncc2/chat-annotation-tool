printing
prettyDate
	| dt |
	dt:= self timestamp asDateAndTime.
	^ dt asTime print24 , ' (' , dt asDate asString , ')' .
