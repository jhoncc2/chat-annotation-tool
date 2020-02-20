accessing
isBefore: aMessageModel
	self timestamp = aMessageModel timestamp ifTrue: [ 
		^ self index < aMessageModel index. 
		].
	^ self timestamp < aMessageModel timestamp.