accessing
selectedResource

	^ (self creditsList atIndex: self creditsListIndex ifAbsent: [^ nil]) key