accessing
requestMessageModels
	
	messageModels
		ifNotEmpty: [ ^ self ].

	loader
		ifNotNil: [ ^ self ].

	loader := [
		| ms  |
		ms := LAJkkDataManager instance messageModels.
		self messageModels: ms ] fork