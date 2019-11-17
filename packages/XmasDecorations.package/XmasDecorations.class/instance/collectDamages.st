drawing
collectDamages

	^ self blizzard
		ifNil: [{}]
		ifNotNil: [:blizard | blizard collectDamages]