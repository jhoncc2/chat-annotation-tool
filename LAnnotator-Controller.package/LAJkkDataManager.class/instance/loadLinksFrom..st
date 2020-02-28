parsing
loadLinksFrom: aUriString
	| indexes |
	aUriString asFileReference readStreamDo: [ :stream |
	[stream atEnd ] whileFalse: [ 
			indexes := ' ' split: stream nextLine.	
			(self messageModels at: (indexes at: 1) asInteger + 1) 
				createRelationWith: (self messageModels at: (indexes at: 2) asInteger + 1).
		]
	].
