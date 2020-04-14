event-handling
onMessageClicked: aMessageModel
	| aMessage |
	aMessage := self findMessageFromModel: aMessageModel.
	"trigger action completed"
	aMessage  selected 
			ifFalse: [ self onMessageSelected: aMessage . ]
			ifTrue: [ self onMessageUnselected: aMessage . ].
	