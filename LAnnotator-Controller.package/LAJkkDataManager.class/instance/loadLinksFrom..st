parsing
loadLinksFrom: aUriString
	| indexes |
	aUriString asFileReference readStreamDo: [ :stream |
	[stream atEnd ] whileFalse: [ 
			indexes := ' ' split: stream nextLine.	
			(self messageModels at: (indexes at: 1) asInteger) 
				createRelationWith: (self messageModels at: (indexes at: 2) asInteger).
		]
	].
