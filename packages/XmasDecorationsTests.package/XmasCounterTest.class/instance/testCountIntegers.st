tests
testCountIntegers

	counter value: 5; target: 10.
	counter speed: 1.
	self assert: 5 equals: (counter value).
	
	self
		assert: #(6 7 8 9 10 10 10)
		equals: ((1 to: 7) collect: [:i | counter step; value]).
	
	counter target: -2; speed: 2.
	self
		assert: #(8 6 4 2 0 -2 -2 -2)
		equals: ((1 to: 8) collect: [:i | counter step; value]).