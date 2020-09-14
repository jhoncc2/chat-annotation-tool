initialization
moveScrollToView: view
	|scrollView dtop dbottom scrollDistance |
	scrollView := self parent parent.
	
	dtop := view position y - scrollView scrollPosition y negated.
	dbottom := (view position y + view extent y) - (scrollView scrollPosition y negated + scrollView extent y).
	scrollDistance := 0.
	dtop < 0 ifTrue: [
		scrollDistance := dtop.
		scrollView scrollVerticallyBy: dtop negated.
	
	].
 	dbottom > 0 ifTrue: [ 
		scrollDistance := dbottom.
		scrollView scrollVerticallyBy: dbottom negated.
	].
	^ scrollDistance negated.