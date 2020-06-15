action handling
onAction: annEvent do: callable
	self app announcer when: annEvent do: callable