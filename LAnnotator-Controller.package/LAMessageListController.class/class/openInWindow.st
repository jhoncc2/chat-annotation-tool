instance creation
openInWindow
	| tmp1 tmp2 tmp4 |
	tmp4 := self new.
	tmp4
		messageModels: (DSMessageFetcher instance messages reversed first: 40);
		view: self newView.
	tmp1 := tmp4 yourself.
	tmp2 := BlSpace new.
	tmp2 extent: 800 @ 420.
	tmp2 root addChild: tmp1 view asScrollableElement.
	tmp2 show