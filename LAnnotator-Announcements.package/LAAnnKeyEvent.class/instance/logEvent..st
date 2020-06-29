accessing
logEvent: aStream
	aStream << self logHeader << self separator
		<< self key