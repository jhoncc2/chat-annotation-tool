accessing
fetchDSmessages
	self instance messages ifEmpty: [
		self instance fetchData.
	].
	^ self instance messages