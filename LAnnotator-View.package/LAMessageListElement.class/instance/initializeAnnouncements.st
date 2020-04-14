initialization
initializeAnnouncements
	self app announcer when: LAAnnMessageClicked do: [ :ann | 
		self onMessageClicked: ann message messageModel. 
	].