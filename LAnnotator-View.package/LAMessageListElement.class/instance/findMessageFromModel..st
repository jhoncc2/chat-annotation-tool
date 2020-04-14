event-handling
findMessageFromModel: aMessageModel
	^ self messageElements at: (self messageElements findFirst: [ :e | e messageModel = aMessageModel ])