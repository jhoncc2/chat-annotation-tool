examples
exampleMessagesWithText
	<gtExample>
	| tmp1 tmp2 tmp4 |
	tmp4 := LAMessageListController new.
	tmp4
		messageModels: DSMessages threeItems;
		view: LAMessageListController newView.
	tmp1 := tmp4 yourself.
	tmp2 := BlSpace new.
	tmp2 extent: 800 @ 420.
	tmp2 root addChild: tmp1 view asScrollableElement.
	tmp2 show