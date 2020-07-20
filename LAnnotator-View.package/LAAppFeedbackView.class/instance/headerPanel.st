initialization
headerPanel
	controlPanel := LACommandInfoPanel new.
	controlPanel layout: (BlFlowLayout horizontal).
	controlPanel constraintsDo: [ :c | c vertical fitContent. ].
	controlPanel padding: (BlInsets all: 3).
	^ controlPanel