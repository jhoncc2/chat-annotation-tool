accessing
logEvent: aStream
	aStream << self logHeader << self separator 
		"<< self class asString << '|'
		<< self timestamp asString << '|'"
		"<< self aMessage id << '|'"
		<< self aMessage messageModel loggedIndex asString << self separator
		<< self bMessage messageModel loggedIndex asString