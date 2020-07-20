initialization
isAnchoredMessageOutOfView

	|view scrollView scrollPos |
	scrollView := self parent.
	view := self messageElements at: messageAnchoredIndex.
	scrollPos := ({(scrollView scrollPosition y negated). 0} max).
	
	^ (view position y < scrollPos)
		or: [view position y > (scrollPos + scrollView extent y - view extent y)].
	"|view scrollView|
	scrollView := self parent.
	view := self messageElements at: messageAnchoredIndex.
	
	^ (view position y < scrollView scrollPosition y negated)
		or: [(view position y + view extent y) > (scrollView scrollPosition y negated + scrollView extent y - view extent y)]."