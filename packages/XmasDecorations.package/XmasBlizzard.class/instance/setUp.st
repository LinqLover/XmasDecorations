initialize-release
setUp

	snowflakes := (1 to: self numberOfSnowflakes)
		collect: [:index | self createSnowflake].