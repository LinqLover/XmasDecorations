class initialization
registerInWorldMenu

	(self environment valueOf: #TheWorldMenu) ifNotNil: [:worldMenu |
		worldMenu registerOpenCommand: (Array 
			with: 'XmasDecorations' 
			with: (Array
				with: self
				with: #open))].