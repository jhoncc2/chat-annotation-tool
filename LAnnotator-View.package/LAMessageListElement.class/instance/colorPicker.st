accessing
colorPicker
	^ colorPicker ifNil: [ colorPicker := LAColorPicker new. ]