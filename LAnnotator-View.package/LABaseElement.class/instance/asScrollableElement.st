initialization
asScrollableElement
	| scrollable |
	self removeFromParent.
	scrollable := LAScrollableElement new.
	scrollable constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	scrollable addChild: self.
	^ scrollable