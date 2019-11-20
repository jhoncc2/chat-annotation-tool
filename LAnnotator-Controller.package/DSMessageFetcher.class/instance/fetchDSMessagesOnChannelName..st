actions
fetchDSMessagesOnChannelName: channelName
	| channel messages last |
	channel := (DSClient newDefault restApi meGuilds select: [ :e | e name = 'Pharo' ]) 
					first channelNamed: channelName.
	messages := OrderedCollection new.

	messages addAll: channel messages.
	last := channel messages last.
	messages addAll: (channel queryMessagesBefore: last).
	
	[last id = messages last id] whileFalse: [
		last := messages last.
		messages addAll: (channel queryMessagesBefore: last).
	].
	^ messages