drawing
topMostMorphs

	^ self blizzard
		ifNil: [#()]
		ifNotNil: [:blizzard | blizzard snowflakes]