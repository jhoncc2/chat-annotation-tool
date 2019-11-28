log
logEvent: aStream
	aStream << self class asString << '|'
		<< self timestamp asString << '|'
		"<< self aMessage id << '|'"
		<< self aMessage index asString
		