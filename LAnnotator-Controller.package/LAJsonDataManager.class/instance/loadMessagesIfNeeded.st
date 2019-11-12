as yet unclassified
loadMessagesIfNeeded
	self messageModels ifNotNil:  [ ^ self ].
	self loadMessages 