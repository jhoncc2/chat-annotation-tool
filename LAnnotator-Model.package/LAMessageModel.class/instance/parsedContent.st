as yet unclassified
parsedContent
	parsedContent ifNotNil: [ ^ parsedContent ]. 
	parsedContent := self content.
	self mentions do: [ :e | parsedContent := parsedContent copyReplaceAll: e id with: e username ].
	^ parsedContent.