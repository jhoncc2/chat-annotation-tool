baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'Bloc' with: [
				spec repository: 'github://feenkcom/Bloc/src' ];
			baseline: 'Brick' with: [
				spec repository: 'github://feenkcom/Brick/src' ];
			baseline: 'NeoJSON' with: [
				spec repository: 'github://svenvc/NeoJSON/repository' ].
		spec 
			package: #'LAnnotator-View' with: [
				spec requires: #('Bloc' 'Brick' 'LAnnotator-Announcements' ). ];
			package: #'LAnnotator-Model' with: [
				spec requires: #(). ];
			package: #'LAnnotator-Controller' with: [
				spec requires: #('Bloc' 'LAnnotator-Model' 'LAnnotator-View' 'NeoJSON') ];
			package: #'LAnnotator-Announcements' with: [
				spec requires: #( ). ];
			package: #'LAnnotator-Examples' with: [
				spec requires: #('Bloc' 'Brick' 'LAnnotator-Controller' 'LAnnotator-Model' 'LAnnotator-View' ). ].
	]