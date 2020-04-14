instance creation
newWithModel: aLAMessageModel controller: controller
	^ self basicNew messageModel: aLAMessageModel; 
		controller: controller;
		initialize; 
		yourself