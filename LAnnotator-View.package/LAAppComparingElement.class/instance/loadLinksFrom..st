accessing
loadLinksFrom: stringPaths
	self assert: stringPaths size = self controllers size
		description: 'The list of paths does not match'.
		
	self controllers with: stringPaths do: [ :c :p |
		c loadLinksFrom: p.
		].
	
	self updateLinks.