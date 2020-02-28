accessing
messageRelations
	^ messageRelations ifNil: [ messageRelations := LADiscordMessageList empty ]