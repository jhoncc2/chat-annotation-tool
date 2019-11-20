initialization
activate
	active := true.
	toggleButtonIcon background: Color green.
	self whenActiveDo cull: self. 