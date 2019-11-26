loading
addTimeLapsedBetween: aModel and: bModel

	| cont |
	cont := BlElement new layout: BlLinearLayout vertical alignCenter; 
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical fitContent ];
		yourself.
	label := LATimeDiffLabel new timeBetween: aModel timestamp and: bModel timestamp; yourself. 
	cont addChild: label.
	self addChild: cont.