accessing
colorPicker
	^ colorPicker ifNil: [ self newColorPicker ]