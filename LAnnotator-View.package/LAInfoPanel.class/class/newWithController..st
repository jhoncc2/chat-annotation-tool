instance creation
newWithController: controller
	^ self basicNew controller: controller; initialize; yourself