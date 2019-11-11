examples
exampleMessagesConnected
	<gtExample>
	| a b view tmp7 |
	a := LABoxWidgetElement new.
	b := LABoxWidgetElement new.
	view := BlElement new.
	
	tmp7 := BlLinearLayout vertical.
	tmp7 cellSpacing: 10.
	view
		layout: tmp7 yourself;
		padding: (BlInsets all: 20);
		constraintsDo: [ :arg1 | 
			arg1 horizontal fitContent.
			arg1 vertical fitContent ];
		addChild: a;
		addChild: b.
	self openInWindow: view