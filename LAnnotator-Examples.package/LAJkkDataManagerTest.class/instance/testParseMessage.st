as yet unclassified
testParseMessage

	| inst res |
	inst := LAJkkDataManager new.
	res := inst parseMessage: '[10:13] <discord> i added those to the sources list'.
	
	self assert: res class equals: LAJkkModel . 
	self assert: res prettyDate  equals: '10:13'. 
	self assert: res username  equals: '<discord>'.
	self assert: res parsedContent equals: 'i added those to the sources list'.