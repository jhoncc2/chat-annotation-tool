as yet unclassified
dataManager
	^ dataManager := dataManager ifNil: [ LAJkkDataManager newInstance ]