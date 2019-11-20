initialization
initializeEvents
	self when: LAUntanglingSwitchModeEvent do: [ :e | listView switchMode ]