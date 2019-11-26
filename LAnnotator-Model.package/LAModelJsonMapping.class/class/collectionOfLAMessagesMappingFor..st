mapping - message
collectionOfLAMessagesMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #LACollectionOfMessages customDo: [ :mapping |
			mapping listOfType: LADiscordMessageList andElementSchema: LADiscordModel ].
	self laMessageMappingFor: aNeoJSONMapper.