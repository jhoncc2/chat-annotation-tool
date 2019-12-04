initialization
relateMessage: aMessageModel with: bMessageModel
	aMessageModel createRelationWith: bMessageModel.
	self registerUnion: aMessageModel.