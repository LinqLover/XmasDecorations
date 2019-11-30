toolbuilder
buildHeaderWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #headerContents;
		yourself