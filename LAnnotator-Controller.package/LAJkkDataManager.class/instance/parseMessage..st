parsing
parseMessage: aStringLine
	| model parsedUsername parsedTime |
	
	parsedUsername := '<[^>]+>' asRegexIgnoringCase matchingRangesIn: aStringLine.
	parsedTime := '\[\d\d\:\d\d\]' asRegexIgnoringCase matchingRangesIn: aStringLine.
	model :=  LAJkkModel new.
	model username: (aStringLine copyFrom: parsedUsername first first to: parsedUsername first last).
	model time: (aStringLine copyFrom: parsedTime first first to: parsedTime first last).
	model content: (aStringLine copyFrom: parsedUsername first last + 1 to: aStringLine size) trimmed.
	^ model