instance creation
openMocked
	| tmp1 tmp3 |
	tmp3 := self new.
	tmp3
		messageModels: LAMockProvider instance collectMessageModels;
		view: self newView.
	tmp1 := tmp3 yourself.
	^ tmp1 view asScrollableElement