initialization
onBindHolder: anElementHolder at: aPosition
	"Update holder's model"

	anElementHolder messageModel: (messageModels at: aPosition)