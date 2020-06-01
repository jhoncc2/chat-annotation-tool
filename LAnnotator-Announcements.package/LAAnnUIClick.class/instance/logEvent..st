accessing
logEvent: aStream
	aStream 
		<< self class asString << '|'
		<< self blClickEvent timestamp asString << '|'
		<< self blClickEvent button class asString << '|'
		<< self blClickEvent position asString << '|'
		<< self blClickEvent currentTarget class asString 
		