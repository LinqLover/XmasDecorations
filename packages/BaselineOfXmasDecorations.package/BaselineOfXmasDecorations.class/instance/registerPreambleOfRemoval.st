scripts
registerPreambleOfRemoval

	(PackageInfo named: #XmasDecorations) preambleOfRemoval:
		('{1} new preUnload' format: {self className}).