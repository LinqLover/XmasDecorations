accessing
creditsList

	^ creditsList ifNil: [creditsList :=
		self resourcesClass collectCredits as: OrderedDictionary]