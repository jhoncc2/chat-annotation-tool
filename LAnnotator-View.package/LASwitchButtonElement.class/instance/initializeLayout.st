initialization
initializeLayout
	"super initializeLayout"
	self viewModel: BrToggleModel new;
		look: (BrMaterialToggleIconifiedLook + BrMaterialToggleLabelledLook 
			when: BrToggleActivatedEvent do: [ :anEvent | 
				self deactivate ];
			when: BrToggleDeactivatedEvent do: [ :anEvent | 
				self activate ]);
		viewModelDo: [ :aModel | aModel icon: self toggleButtonIcon ].
		
		"when: BlClickEvent do: [ :e |  self handleClickEvent: e ]."