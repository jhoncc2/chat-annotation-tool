initialization
initializeLayout
	"super initializeLayout"
	self viewModel: BrToggleModel new;
		look: (BrMaterialToggleWithIconLook + BrMaterialToggleWithLabelLook );
			when: BrToggleActivatedEvent do: [ :anEvent | 
				self deactivate ];
			when: BrToggleDeactivatedEvent do: [ :anEvent | 
				self activate ];
		"viewModelDo: [ :aModel | aModel icon: self toggleButtonIcon ]."
		icon: self toggleButtonIcon.
		
		"when: BlClickEvent do: [ :e |  self handleClickEvent: e ]."