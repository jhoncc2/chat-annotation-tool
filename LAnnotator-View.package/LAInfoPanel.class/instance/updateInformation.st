update
updateInformation
	| text |
	text := 'Total Conversations: ' , controller numberOfConversations asString.
	text := text , ' | Tagged Messages: ' , controller taggedMessages size asString.
	tagged text: text.