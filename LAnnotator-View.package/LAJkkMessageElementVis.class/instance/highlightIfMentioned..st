hightlihgt
highlightIfMentioned: mentions
	(mentions anySatisfy: [ :e |
		 self messageModel plainUsername = e 
	]) ifTrue: [
		self username background: (self thumbnail background paint color alpha: 0.7).
	].