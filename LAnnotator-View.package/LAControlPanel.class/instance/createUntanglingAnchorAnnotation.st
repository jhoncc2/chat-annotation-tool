initialization
createUntanglingAnchorAnnotation
	| cont |
	anchorButton := LASwitchButtonElement new.  
	anchorButton label: 'Anchor'.
	
	anchorButton when: BlClickEvent do: [ :e |
		anchorButton active 
			ifTrue:  [ self announceAction: LAAnnDisableAnchor new. ]
			ifFalse: [ self announceAction: LAAnnEnableAnchor new. ]
	].
	anchorButton	
		whenActiveDo: [ 
			anchorButton  label: 'Anchor'.
			"self fireEvent: (LAUEventSwitchAnchor new)"
			];
		whenDeactivateDo: [ 
			anchorButton label: 'Unanchor'.
			"self fireEvent: (LAUEventSwitchAnchor new)"
			].
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.
	
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: '[A]') ; 
							yourself).
							
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Anchor Message') ; 
							alignLeft;
							width: 150;
							yourself).
	cont addChild: anchorButton.
	
	self addChild: cont