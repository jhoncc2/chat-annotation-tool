accessing
isConnectionToMessageElement: a andMessageElement: b
	^ (self aMessage = a and: [ self bMessage = b ])
		or: [ self bMessage = a and: [ self aMessage = b ] ]