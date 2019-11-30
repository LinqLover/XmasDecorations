accessing
collectCredits

	^ (self resourceSelectors
		collect: [ :selector | selector ->
			(((self lookupSelector: selector) pragmas
				select: [ :pragma | pragma keyword beginsWith: #xmasResourceBy: ])
				gather: [ :pragma |
					pragma message in: [ :message | Array
						with: message arguments first
						with: ((message selector keywords allButFirst
							with: message arguments allButFirst
							collect: [ :keyword :arg |
								keyword , ' ' , arg])
									joinSeparatedBy: $ ) ] ]) ]
		as: Dictionary)
			reject: [ :association |
				association value isEmpty ].