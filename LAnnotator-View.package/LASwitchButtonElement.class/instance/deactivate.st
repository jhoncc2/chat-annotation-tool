initialization
deactivate
	active := false.
	toggleButtonIcon background: Color red.
	self whenDeactivateDo cull: self. 