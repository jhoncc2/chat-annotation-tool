initialization
doLog
	
	logQueue ifEmpty: [ ^ self. ].
	
   fileReference writeStreamDo: [ :s | 
		s setToEnd. 
		logQueue first logEvent: s. 
		logQueue removeFirst.		
		s cr.  ] 
	