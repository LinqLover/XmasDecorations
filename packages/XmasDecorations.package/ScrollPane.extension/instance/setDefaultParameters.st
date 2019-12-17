*XmasDecorations-initialization-override
setDefaultParameters
	"change the receiver's appareance parameters"

	self
		fillStyle: (self userInterfaceTheme color ifNil: [Color white]);
		borderStyle: (self userInterfaceTheme borderStyle ifNil: [BorderStyle simple]) copy;
		borderColor: (self userInterfaceTheme borderColor ifNil: [Color gray: 0.6]);
		borderWidth: (self userInterfaceTheme borderWidth ifNil: [1]).