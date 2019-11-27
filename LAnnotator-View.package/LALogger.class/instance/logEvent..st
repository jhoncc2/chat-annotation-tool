initialization
logEvent: anEvent
	fileReference writeStreamDo: [ :s | 
		s setToEnd. 
		anEvent logEvent: s. 
		s cr.  ] 