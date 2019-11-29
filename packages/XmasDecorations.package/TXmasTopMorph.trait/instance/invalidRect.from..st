change reporting
invalidRect: damageRect from: aMorph

	self setProperty: #hasChanged toValue: true.
	aMorph == self ifTrue: [^ self].
	super invalidRect: damageRect from: aMorph.