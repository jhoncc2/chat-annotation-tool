examples
exampleMessagesConnected
	<gtExample>
	| tmp1 tmp2 tmp3 tmp5 tmp7 |
	tmp1 := LABoxWidgetElement new.
	tmp2 := LABoxWidgetElement new.
	tmp5 := BlElement new.
	tmp7 := BlLinearLayout vertical.
	tmp7 cellSpacing: 10.
	tmp5
		layout: tmp7 yourself;
		padding: (BlInsets all: 20);
		constraintsDo: [ :arg1 | 
			arg1 horizontal fitContent.
			arg1 vertical fitContent ];
		addChild: tmp1;
		addChild: tmp2.
	tmp3 := tmp5 yourself.
	self openInWindow: tmp3