initialization
initializeAnnouncements
	listApp announcer when: LAAnnMessageClicked do: [ :ann | 
		self onMessageClicked: ann message messageModel. 
	].