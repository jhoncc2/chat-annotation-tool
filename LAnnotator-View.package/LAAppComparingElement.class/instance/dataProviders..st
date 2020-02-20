accessing
dataProviders: dataProviderColl
	dataProviders := dataProviderColl.
	controllers := dataProviders 
		collect: [ :e | LAMessageListController new dataProvider: e; yourself ].
		