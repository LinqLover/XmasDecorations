tests
testCountFloats

	counter
		value: 2.3;
		target: 4.2;
		speed: 0.4.
	
	self assert: 2.3 equals: counter value.
	((1 to: 7) collect: [:i | counter step; value])
		with: #(2.7 3.1 3.5 3.9 4.2 4.2 4.2)
		do: [ :actual :expected |
			self assert: [actual closeTo: expected] ].