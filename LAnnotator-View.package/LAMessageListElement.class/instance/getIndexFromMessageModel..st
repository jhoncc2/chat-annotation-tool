event-handling
getIndexFromMessageModel: aMessageModel
	|el|
	el := self findMessageFromModel: aMessageModel.
	^ self messageElements indexOf: el
	