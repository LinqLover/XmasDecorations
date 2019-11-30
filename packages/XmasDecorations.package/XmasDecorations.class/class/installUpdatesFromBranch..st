product updates
installUpdatesFromBranch: aBranch

	(self confirm: 'This will install the latest updates for XmasDecorations!\Are you sure you would like to continue?' withCRs)
		ifFalse: [^ false].
	Metacello new
		baseline: 'XmasDecorations';
		repository: ('github://LinqLover/XmasDecorations:{1}/packages' format: aBranch);
		load.