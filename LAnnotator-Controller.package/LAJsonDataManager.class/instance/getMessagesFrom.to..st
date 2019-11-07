as yet unclassified
getMessagesFrom: iniIndex to: endIndex 
	| limit |
	limit := {endIndex. self messageModels size }.
	^ self messageModels collect: #value from: iniIndex to: limit