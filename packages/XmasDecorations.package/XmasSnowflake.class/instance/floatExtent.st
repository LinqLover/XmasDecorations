accessing
floatExtent

	^ floatExtent ifNil: [
		floatExtent := self extent]