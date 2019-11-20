as yet unclassified
parsedContent
	parsedContent ifNotNil: [ ^ parsedContent ]. 
	self mentions ifNil: [ ^ self content ]. 
	parsedContent := self content.
	self mentions do: [ :e | parsedContent := parsedContent copyReplaceAll: e id with: e username ].
	^ parsedContent.