*XmasDecorations-overriding-translation
translate: aString toLocaleID: localeID inDomain: aDomainName
	self xmasDecorations tryTranslate: aString ifFound: [:result |
		^ result].
	^ (self availableForLocaleID: localeID)
		translate: aString inDomain: aDomainName