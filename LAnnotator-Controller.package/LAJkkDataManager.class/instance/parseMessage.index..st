parsing
parseMessage: aStringLine index: anIndex
	| model parsedUsername parsedTime |
	(aStringLine beginsWith: '===') ifTrue: [ 
		^ model := LAJkkModel new 
						index: anIndex; 
						username: '=Announce=';
						time: '00:00';
						content: aStringLine;
						yourself.   ].
					
	(aStringLine beginsWith: '---') ifTrue: [ 
		^ model := LAJkkModel new 
						index: anIndex; 
						username: '=Note=';
						time: '00:00';
						content: (aStringLine allButFirst: 3);
						yourself.   ].
	
	parsedUsername := '<.+>' asRegexIgnoringCase matchingRangesIn: aStringLine.
	parsedTime := '\[\d\d\:\d\d\]' asRegexIgnoringCase matchingRangesIn: aStringLine.
	model :=  LAJkkModel new.
	parsedUsername isEmpty 
		ifTrue: [ 
			model username: '<*>'.
			model content: (aStringLine copyFrom: parsedTime first last + 1 to: aStringLine size) trimmed.]
		ifFalse: [ 
			model username: (aStringLine copyFrom: parsedUsername first first to: parsedUsername first last). 
			model content: (aStringLine copyFrom: parsedUsername first last + 1 to: aStringLine size) trimmed.].

	model time: (aStringLine copyFrom: parsedTime first first to: parsedTime first last).
	model index: anIndex. "time does not consider seconds, because of it we use index"
		
	^ model