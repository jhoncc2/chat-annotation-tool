instance creation
newInstance
	instance := self basicNew.
	LAApplication app: instance.
	
	instance initialize.