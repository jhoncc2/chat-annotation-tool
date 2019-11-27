log
logEvent: aStream
	aStream << self class << '|'
		<< self timestamp << '|'
		"<< self aMessage id << '|'"
		<< self aMessage index << '|'
		<< self bMessage index << '|'	