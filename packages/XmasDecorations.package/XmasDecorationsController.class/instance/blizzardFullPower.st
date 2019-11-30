actions
blizzardFullPower

	| blizzard numberOfSnowflakes |
	self areDecorationsActive ifFalse: [^ self].
	blizzard := self xmasDecorations blizzard.
	numberOfSnowflakes := Compiler evaluate: (UIManager default
		request: 'Number of snowflakes per second?'
		initialAnswer: blizzard maximumSnowflakesPerSecond asString).
	numberOfSnowflakes ifNil: [^ self].
	self assert: [numberOfSnowflakes isNumber].
	blizzard
		adjustIntensity: numberOfSnowflakes
		speed: Float infinity.