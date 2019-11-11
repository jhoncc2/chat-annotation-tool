examples
exampleMessagesConnected2
	<gtExample>
	| a b view layout arc |
	a := LABoxWidgetElement new.
	b := LABoxWidgetElement new.
	view := BlElement new.
	
	arc := LAArcConnectorElement new setVertical; 
				startAnchor: a endAnchor: b ; 
				yourself.
				
	
	layout := BlLinearLayout vertical.
	layout cellSpacing: 10.
	view
		layout: layout yourself;
		padding: (BlInsets all: 20);
		constraintsDo: [ :arg1 | 
			arg1 horizontal fitContent.
			arg1 vertical fitContent ];
		addChild: a;
		addChild: b.
	self openInWindow: view.
	
	view addChild: arc.
	