initialization
initializeEvents
	self when: LAUEventSwitchMode do: [ :e | listView switchUntaglingMode ].
	self when: LAUEventSwitchAnchor do: [ :e | listView switchAnchorStatus ].
	self when: LAUEventAnnotateNext do: [ :e | listView annotateNext ].
	self when: BlKeyUpEvent do: [ :e | self handleKeyupEvent: e ]