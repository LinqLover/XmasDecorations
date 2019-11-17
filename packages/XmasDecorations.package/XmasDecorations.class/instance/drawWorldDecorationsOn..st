drawing
drawWorldDecorationsOn: aCanvas

	self blizzard ifNotNil: [:blizzard |
		blizzard drawOn: aCanvas].