accessing
instance
	^ instance ifNil: [ self newInstance ]