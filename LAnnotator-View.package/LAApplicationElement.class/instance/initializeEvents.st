initialization
initializeEvents
	self when: LAUntanglingSwitchModeEvent do: [ :e | listView switchMode ].
	self when: BlKeyUpEvent do: [ :e | listView handleKeyupEvent: e ]