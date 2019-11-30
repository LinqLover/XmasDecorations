toolbuilder
buildContentsWith: aBuilder

	^ aBuilder pluggableMultiColumnListSpec new
		model: self;
		name: 'Credits';
		list: #creditsListColumns;
		getIndex: #creditsListIndex;
		setIndex: #creditsListIndex:;
		doubleClick: #browseSelectedResource;
		yourself