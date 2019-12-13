decoration
decorate

	self undecorate.
	Project current uiManager informUser: 'Turning decorations on ...' during: [
		self new decorate].
	self changed: #decoration.