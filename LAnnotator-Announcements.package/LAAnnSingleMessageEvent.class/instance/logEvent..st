accessing
logEvent: aStream
	aStream << self logHeader << self separator 
		<< self message messageModel loggedIndex asString 