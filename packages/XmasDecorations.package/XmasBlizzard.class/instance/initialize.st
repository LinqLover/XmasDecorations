initialize-release
initialize

	super initialize.
	intensityCounter := XmasCounter forValue: 0.
	isFireworks := false.
	random := Random new.