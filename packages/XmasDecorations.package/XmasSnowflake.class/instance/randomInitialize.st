initialization
randomInitialize

	self
		baseExtent: (RandomGenerator nextBetween: 35 and: 50) asPoint;
		floatCenter: (RandomGenerator
			nextBetween: self owner left - self placementOffset x
			and: self owner right + self placementOffset x)
				@ (self owner top - self placementOffset y);
		opacity: (RandomGenerator nextBetween: 0.03 and: 0.37);
		horizontalSign: (RandomGenerator next - 0.5) sign;
		speed: (RandomGenerator nextBetween: 30 and: "150"225).