accessing
iterateNext
	self iterator == self colorList size ifTrue: [ self resetIterator ].
	^ iterator := iterator + 1