panels
footerPanel
	
	infoPanel := LAInfoPanel new.
	infoPanel layout: (BlLinearLayout vertical).
	infoPanel constraintsDo: [ :c | c vertical fitContent. ].
	infoPanel padding: (BlInsets all: 3).

	^ 	infoPanel