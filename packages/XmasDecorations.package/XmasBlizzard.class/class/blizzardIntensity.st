preferences
blizzardIntensity

	<preference: 'Blizzard intensity'
		category: #XmasDecorations
		description: 'A factor for the maximum number of snowflakes in a blizzard. Adjust to match individual performance of your client. See #maximumSnowflakesPerSecond for details.'
		type: #Number>
	^ BlizzardIntensity ifNil: [1]