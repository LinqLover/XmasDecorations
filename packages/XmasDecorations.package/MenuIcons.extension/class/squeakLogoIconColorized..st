*XmasDecorations-override
squeakLogoIconColorized: aColor

	| theMouse |
	theMouse := self squeakLogoIcon dyed: aColor.
	self xmasResources at: #formCapForSqueakyMouse ifPresent: [:cap |
		| canvas |
		canvas := FormCanvas extent: (theMouse extent max: cap extent).
		canvas drawImage: theMouse at: canvas extent - theMouse extent // 2.
		canvas translucentImage: cap at: canvas extent - cap extent // 2.
		^ canvas form].
	^ theMouse