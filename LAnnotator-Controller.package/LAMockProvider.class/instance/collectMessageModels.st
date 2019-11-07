initialization
collectMessageModels
	^ self mockMessages
		collect: [ :arg1 | self newMessageModel text: (arg1 at: 4) ]