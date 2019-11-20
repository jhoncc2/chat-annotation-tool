accessing
messageEventListener
	messageEventListener
		ifNil: [ messageEventListener := self newMessageEventListener ].
	^ messageEventListener