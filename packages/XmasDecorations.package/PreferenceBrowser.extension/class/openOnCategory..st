*XmasDecorations-instance creation
openOnCategory: aCategoryName

	| browser morph |
	browser := self new.
	morph := PreferenceBrowserMorph withModel: browser.
	browser selectedCategory: aCategoryName.
	morph openInWorld.
	^ browser