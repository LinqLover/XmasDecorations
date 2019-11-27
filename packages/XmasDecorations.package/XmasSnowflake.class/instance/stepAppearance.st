stepping
stepAppearance

	"| background |
	background := (self owner morphsAt: self center)
		ifEmpty: [self owner]
		ifNotEmpty: #first.
	self baseColor: background color negated."
	
	"self baseColor: (Color white
		mixed: ((self floatCenter dist: ActiveHand position) / self owner extent r) ** 0.1
		with: Color random)."
	
	"self baseColor: Color random"
	"self baseColor: (Color h: (counter * 100) sin s: 0.7 v: 0.95)."