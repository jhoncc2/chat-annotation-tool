accessing
instance
	^ instance ifNil: [ instance := DSFetcher new]