as yet unclassified
openOnFiles: stringPaths providerClass: aClass from: ini to: end
	dps := stringPaths collect: [ :e | aClass new loadMessagesFrom: e; yourself. ].
	self openOnDataProviders: dps from: ini to: end