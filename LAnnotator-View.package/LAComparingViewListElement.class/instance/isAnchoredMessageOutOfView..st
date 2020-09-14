initialization
isAnchoredMessageOutOfView: actualYScrollDistance
	|view scrollView scrollPos |
	scrollView := self parent parent.
	view := self messageElements at: messageAnchoredIndex.
	scrollPos := ({(scrollView scrollPosition y negated - actualYScrollDistance). 0} max).
	
	^ (view position y < scrollPos)
		or: [view position y > (scrollPos + scrollView extent y - view extent y)].