initialization
randomReset

	self horizontalSign: (RandomGenerator next - 0.5) sign.
	self baseExtent: (RandomGenerator nextBetween: 35 and: 50) asPoint.
	self opacity: (RandomGenerator nextBetween: 0.03 and: 0.37).
	
	self floatCenter:
		(RandomGenerator
			nextBetween: self owner left - self placementOffset x
			and: self owner right + self placementOffset x)
		@ self placementOffset y negated.
	self speed: (RandomGenerator nextBetween: 30 and: 150).