toolbuilder
headerChildren

	| builder spec widget |
	builder := ToolBuilder default.
	spec := builder pluggableButtonSpec new
		model: self;
		label: #headerContents;
		frame: (0 @ 0 corner: 1 @ 1);
		action: #blizzardFullPower;
		enabled: #areDecorationsActive;
		yourself.
	widget := builder build: spec.
	Smalltalk isMorphic ifTrue: [
		widget borderWidth: 0].
	^ widget asOrderedCollection