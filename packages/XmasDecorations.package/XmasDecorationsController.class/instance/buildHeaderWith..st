toolbuilder
buildHeaderWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #headerChildren;
		yourself