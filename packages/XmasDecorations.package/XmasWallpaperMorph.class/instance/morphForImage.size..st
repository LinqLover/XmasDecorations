private
morphForImage: aForm size: aPoint

	| inner morph overflow |
	inner := morphCache at: aForm ifAbsentPut: [OrderedDictionary new].
	morph := inner at: aPoint ifAbsentPut: [
		(aForm scaledIntoFormOfMinSize: aPoint) asMorph].
	overflow := inner size - self innerCacheLimit.
	overflow strictlyPositive
		ifTrue: [
			inner removeFirst: overflow].
	^ morph