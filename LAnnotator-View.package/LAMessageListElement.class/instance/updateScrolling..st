actions
updateScrolling: messageModel
	|b d c|
	"b := {self parent scrollPosition y. (self parent scrollPosition y + self parent extent y)}.
	d := b first - messageModel position y.
	c := b second - (messageModel position y + messageModel extent y).
	d < 0 ifTrue: [ 
		c < 0 ifTrue: [ 
			self parent scrollVerticallyBy: c
		] ifFalse: [ 
			
		].
	] ifFalse: [ 
		self parent scrollVerticallyBy: d
	]."