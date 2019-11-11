event-handling
findRoot
	| earliestMessage |
	earliestMessage := self firstMessageElement.
	(self isBefore: earliestMessage) 
		ifTrue: [ ^ self ]
		ifFalse: [ ^ earliestMessage findRoot.]