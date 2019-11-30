toolbuilder
buildContentsWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #contents;
		yourself