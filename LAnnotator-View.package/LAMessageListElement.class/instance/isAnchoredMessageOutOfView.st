initialization
isAnchoredMessageOutOfView
	|view scrollView|
	scrollView := self parent.
	view := self messageElements at: messageAnchoredIndex.
	
	^ (view position y <= scrollView scrollPosition y negated)
		or: [(view position y + view extent y) > (scrollView scrollPosition y negated + scrollView extent y - view extent y)].