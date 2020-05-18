accessing
parsedContent
	^ (content copyReplaceAll: '\n' with: String cr)
			copyReplaceAll: String tab with: ' ' 