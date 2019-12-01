product updates
installUpdatesFromBranch: aBranch

	(self confirm: ('Are you sure you would like to install the latest {1} updates \for XmasDecorations? This might involve a lot of changes, \from fancy new decorations over damage of your image up to world peace.\\To be safe, we recommend the following:\1. Save your image;\2. Update your image via the docking bar;\3. Install updates for {2}.\\Would you like to do step 3 now?' withCRs format: {aBranch. self name}))
		ifFalse: [^ false].
	Metacello new
		baseline: 'XmasDecorations';
		repository: ('github://LinqLover/XmasDecorations:{1}/packages' format: {aBranch});
		load.