initialization
messageModel: aMessageModel
	messageModel := aMessageModel.
	itemElement := LAJkkMessageElement newWithModel: aMessageModel. 
	itemElement
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical fitContent.
			c margin: (BlInsets top: 0 right: 0 bottom: 4 left: 0) ].
	
	"itemElement messageModel: aMessageModel"