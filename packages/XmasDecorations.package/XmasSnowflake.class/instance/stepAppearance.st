stepping
stepAppearance

	self isFirework ifTrue: [
		self baseColor: (Color h: (counter + self hash) * 10 s: 0.7 v: 0.95)].