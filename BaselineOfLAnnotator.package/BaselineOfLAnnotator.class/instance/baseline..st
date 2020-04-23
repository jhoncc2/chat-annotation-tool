baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'Bloc' with: [
				spec repository: 'github://pharo-graphics/Bloc/src' ];
			baseline: 'Brick' with: [
				spec repository: 'github://pharo-graphics/Brick/src' ];
			baseline: 'NeoJSON' with: [
				spec repository: 'github://svenvc/NeoJSON/repository' ].
		spec 
			package: #'LAnnotator-View' with: [
				spec requires: #('Bloc' 'Brick' 'LAnnotator-Controller' 'LAnnotator-Announcements' ). ];
			package: #'LAnnotator-Controller' with: [
				spec spec requires: #('Bloc' 'LAnnotation-Model' 'LAnnotation-View' 'NeoJSON') ];
			package: #'LAnnotator-Model' with: [
				spec requires: #( 'LAnnotation-View' ). ];
			package: #'LAnnotator-Announcements' with: [
				spec requires: #( ). ];
			package: #'LAnnotator-Examples' with: [
				spec requires: #('Bloc' 'Brick' 'LAnnotator-Controller' 'LAnnotation-Model' 'LAnnotation-View' ). ].
	]