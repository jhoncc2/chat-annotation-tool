actions
fetchData
	messages := OrderedCollection new.
	self channels do: [ :c | 
		messages addAll: (self fetchDSMessagesOnChannelName: c)
	].
