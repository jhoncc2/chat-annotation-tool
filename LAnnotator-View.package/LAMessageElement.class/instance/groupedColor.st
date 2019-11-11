event-handling
groupedColor
	^ groupedColor ifNil: [ groupedColor := self unselectedColor ]