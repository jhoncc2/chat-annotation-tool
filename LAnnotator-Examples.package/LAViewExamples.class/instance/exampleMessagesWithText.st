examples
exampleMessagesWithText
	<gtExample>
	| tmp1 tmp3 |
	tmp3 := LAMessageListController new.
	
	tmp3
		dataProvider: (LAMockProvider instance loadMessages; yourself);
		view: LAMessageListController newView.
	
	tmp3 view messageClass: LADiscordElement.
	
		
	tmp3 loadMessagesFrom: 0 to: 5.
	tmp1 := tmp3 yourself.
	^ tmp1 view asScrollableElement