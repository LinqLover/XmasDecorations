preferences
roofsActivated

	<preference: 'Christmas roofs'
		category: #XmasDecorations
		description: 'If enabled, all windows will be covered with christmas roofs.'
		type: #Boolean>
	^ RoofsActivated ifNil: [true]