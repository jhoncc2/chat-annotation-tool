instance creation
newWithModel: aLAMessageModel
	^ self basicNew messageModel: aLAMessageModel; 
		initialize; 
		yourself