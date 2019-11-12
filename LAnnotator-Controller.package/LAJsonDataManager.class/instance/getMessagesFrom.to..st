as yet unclassified
getMessagesFrom: iniIndex to: endIndex 
	| limit |
	limit := {endIndex. self messageModels size } min.
	^ self messageModels collect: #value from: iniIndex to: limit