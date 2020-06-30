log
logEvent: aStream
	aStream << self logHeader << self separator 
		<< self visible asString << self separator 
		<< ( self message 
					ifNil: [ '' ] 
					ifNotNil: [ self message messageModel loggedIndex asString ] ) 
		
