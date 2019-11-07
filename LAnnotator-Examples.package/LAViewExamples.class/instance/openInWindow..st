examples
openInWindow: arg1
	| tmp1 |
	tmp1 := BlSpace new.
	tmp1 extent: 800 @ 420.
	tmp1 root addChild: arg1.
	tmp1 show