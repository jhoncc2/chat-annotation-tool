initialization
startProcess
	process := [ [ shouldStop ] 
		whileFalse: [ self doLog. 0.1 seconds wait ] ] fork.
