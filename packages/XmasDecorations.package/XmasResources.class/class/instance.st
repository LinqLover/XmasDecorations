accessing
instance

	^ uniqueInstance ifNil: [
		uniqueInstance := self new]