instance creation
newRandomFor: anOwnerMorph

	^ self new
		owner: anOwnerMorph;
		randomInitialize;
		yourself