initialization
app
	(self parent class canUnderstand: #app) ifFalse: [ ^ self parent parent app ].
	^ self parent app 