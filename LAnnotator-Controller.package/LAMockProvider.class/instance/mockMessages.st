as yet unclassified
mockMessages
	^ DSMessages threeItems collect: [ :e | LADiscordModel new copyFrom: e ]