actions
moveScrollToView: view
	|scrollView dtop dbottom|
	scrollView := self parent.
	
	dtop := view position y - scrollView scrollPosition y negated.
	dbottom := (view position y + view extent y) - (scrollView scrollPosition y negated + scrollView extent y).
	dtop < 0 ifTrue: [ 
		self parent scrollVerticallyBy: dtop negated
	].
 	dbottom > 0 ifTrue: [ 
		self parent scrollVerticallyBy: dbottom negated
	].
	"
	d < 0 ifTrue: [ 
		c < 0 ifTrue: [ 
			self parent scrollVerticallyBy: c
		] ifFalse: [ 
			
		].
	] ifFalse: [ 
		self parent scrollVerticallyBy: d
	]."