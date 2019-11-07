mapping - message
collectionOfLAMessagesMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #LACollectionOfMessages customDo: [ :mapping |
			mapping listOfType: LAMessageModels andElementSchema: LAMessageModel ].
	self laMessageMappingFor: aNeoJSONMapper.